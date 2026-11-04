-- PIXEL PARTY – Supabase starting schema
-- Review and adapt policies before deploying publicly.
create table if not exists public.rooms (
  id text primary key,
  host_player_id text not null,
  phase text not null default 'lobby',
  round_number integer not null default 1,
  mode_note text,
  state jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default now()
);

create table if not exists public.room_players (
  id text primary key,
  room_id text not null references public.rooms(id) on delete cascade,
  display_name text not null,
  joined_at timestamptz not null default now(),
  last_seen_at timestamptz not null default now()
);

create table if not exists public.room_events (
  id bigint generated always as identity primary key,
  room_id text not null references public.rooms(id) on delete cascade,
  player_id text not null,
  event_type text not null,
  payload jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default now()
);

alter table public.rooms enable row level security;
alter table public.room_players enable row level security;
alter table public.room_events enable row level security;

-- Deliberately no permissive public policies are added here.
-- Add narrowly scoped policies (or use trusted Edge Functions) before connecting clients.
