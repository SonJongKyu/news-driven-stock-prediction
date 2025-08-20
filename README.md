**2025.08 (1人 개인 프로젝트)**

## **📌 Summary**

본 프로젝트는 **뉴스 기사 데이터를 활용하여 주가 변동을 예측**하는 모델을 구현한 개인 연구 프로젝트입니다.  
뉴스 텍스트 데이터에서 감성(senti­ment)과 주제(topic)를 분석하여 주가 예측 모델에 반영하였으며, 머신러닝과 딥러닝 기반 접근을 통해 실험을 진행했습니다.  
해당 연구 결과는 PDF 논문으로도 정리하여 제출하였습니다.

> 주요 기능  
> - 뉴스 데이터 수집 및 전처리  
> - 감성 분석 및 토픽 모델링 적용  
> - 머신러닝/딥러닝 기반 주가 예측 모델 구축  
> - 예측 성능 비교 및 결과 시각화 

## **🤔 Background**

주가는 단순히 기업의 재무 지표뿐만 아니라 **시장 분위기와 뉴스 정보**에 크게 영향을 받습니다.  
특히 텍스트 기반 뉴스는 투자 심리와 시장 반응을 즉각적으로 반영할 수 있으므로, 이를 활용한 예측 연구의 필요성이 대두되었습니다.  

이 프로젝트는 "뉴스 데이터 기반의 주가 예측 가능성"을 탐구하기 위해 진행되었으며, 논문 형식으로 연구 결과를 정리하였습니다.

## **🔍 Meaning**

이번 프로젝트를 통해 **자연어 처리(NLP)와 금융 데이터 분석**을 융합한 연구를 직접 경험할 수 있었습니다.  
- 뉴스 기사 텍스트에서 의미 있는 특징(feature)을 추출하는 과정  
- 감성 분석(Sentiment Analysis)과 토픽 모델링(Topic Modeling) 기법 활용  
- 예측 모델로서 머신러닝/딥러닝 알고리즘 성능 비교  

단순한 금융 데이터 예측을 넘어, **텍스트 데이터와 금융 데이터를 융합하는 새로운 접근법**을 탐구했다는 점에서 의미가 큽니다.

## **🔨 Technology Stack(s)**

- **Language & Tools**: Python 3.x, Jupyter Notebook  
- **Libraries**: pandas, numpy, scikit-learn, TensorFlow/Keras, nltk, gensim  
- **Data**: 뉴스 기사 크롤링 데이터, 주가 시계열 데이터  
- **Research Output**: PDF 논문 작성 및 정리


## **⚙️ Install**

To reproduce the results, you can install the required dependencies using either **pip** or **conda**.

```bash
# ▶ Option 1: Using pip
pip install -r requirements.txt

# ▶ Option 2: Using conda (recommended)
conda create -n stock-news python=3.9
conda activate stock-news
pip install -r requirements.txt

@misc{Son2025,
  author       = {Son, JongKyu},
  title        = {Stock Movement Prediction Leveraging News Data and Support Vector Machines},
  year         = {2025},
  url          = {https://github.com/SonJongKyu/news-driven-stock-prediction.git},
  note         = {Master's Thesis, Sungkyunkwan University}
  Contact      = {human248@skku.edu}
}
