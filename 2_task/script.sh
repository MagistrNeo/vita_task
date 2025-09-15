#!/bin/bash

# Счетчик времени
START_TIME=$(date +%s)

# Директория с логами
LOG_DIR="/var/log"
SEARCH_TERM="php7.4"

# Простой и надежный поиск
echo "Поиск '$SEARCH_TERM' в $LOG_DIR..."
TOTAL_COUNT=$(grep -r --include="*.log" "$SEARCH_TERM" "$LOG_DIR" 2>/dev/null | wc -l)

# Время окончания
END_TIME=$(date +%s)
EXECUTION_TIME=$((END_TIME - START_TIME))

# Вывод результатов
echo "РЕЗУЛЬТАТЫ:"
echo "Совпадений: $TOTAL_COUNT"
echo "Время работы: ${EXECUTION_TIME}с"
echo "Старт: $(date -d "@$START_TIME" '+%H:%M:%S')"
echo "Финиш: $(date -d "@$END_TIME" '+%H:%M:%S')"
