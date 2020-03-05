FROM jupyter/base-notebook

VOLUME /notebooks
WORKDIR /notebooks

RUN pip install pybind11 && \
  pip install cppimport && \
  pip install jupyter && \
  pip install numpy && \
  pip install scikit-learn && \
  pip install pandas && \
  pip install tensorflow

EXPOSE 8888

CMD ["jupyter", "notebook", "--allow-root", "--notebook-dir=/notebooks", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--NotebookApp.token=''"]
