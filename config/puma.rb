# スレッド数
threads_count = Integer(ENV.fetch("RAILS_MAX_THREADS", 5))
threads threads_count, threads_count

# ポート
port ENV.fetch("PORT", 3000)

# Puma 再起動を許可
plugin :tmp_restart

# Solid Queue の設定（必要なら）
plugin :solid_queue if ENV["SOLID_QUEUE_IN_PUMA"]

# PID ファイル
pidfile ENV["PIDFILE"] if ENV["PIDFILE"]

# ワーカー数
workers ENV.fetch("WEB_CONCURRENCY", 2).to_i
