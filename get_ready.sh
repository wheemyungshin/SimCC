conda create --name simcc python=3.7 -y
conda activate simcc
#conda install pytorch==1.1.0 torchvision==0.3.0 cudatoolkit=9.0 pillow=6.1 -c pytorch
conda install pytorch==1.6.0 torchvision=0.7.0 cudatoolkit=9.2 -c pytorch
../miniconda3/envs/simcc/bin/pip install -r requirements.txt

cd lib
export CC="/usr/bin/gcc-5"
export CXX="/usr/bin/g++-5"
make

cd ..
git clone https://github.com/cocodataset/cocoapi.git ../cocoapi
cd ../cocoapi/PythonAPI
make install
cd ../../SimCC

../miniconda3/envs/simcc/bin/pip install matplotlib==2.1.0
