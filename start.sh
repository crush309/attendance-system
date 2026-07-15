#!/bin/bash
cd "$(dirname "$0")"
echo "📦 安装依赖..."
pip install -q -r requirements.txt 2>/dev/null
echo "🚀 启动考勤数据分析系统..."
echo "   访问地址: http://localhost:8080"
echo "   管理员账号: admin / admin123"
echo ""
cd backend && python3 -m uvicorn app:app --host 0.0.0.0 --port 8080 --reload
