FROM python:3.12-slim
LABEL Maintainer="tengury5@gmail.com"
WORKDIR /app

# pip 최신 버전으로 업데이트
RUN pip install --upgrade pip

# 파일 복사
COPY app.py ./
COPY requirements.txt ./

# 의존성 설치
RUN pip install -r requirements.txt

# 포트 개방
EXPOSE 4000

# 애플리케이션 실행
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0", "--port=4000"]