# The Multi-Agent System

The Multi-Agent System (MAS) has been developed using DALI, running on top of SICStus Prolog. 

You can download DALI and test it by running an example DALI MAS:
```sh
git clone https://github.com/AAAI-DISIM-UnivAQ/DALI.git
cd DALI/Examples/advanced
bash startmas.sh
```
-------------------------------------------------------------------------------------
# Instructions

1. Install Redis at https://redis.io/
2. Install SISCtus Prolog at https://sicstus.sics.se/
3. Clone this repository: 
```sh
 git clone https://github.com/andrearafanelli/MAS_Py_FLOOD.git
```
4. Download the dataset from:  https://drive.google.com/drive/folders/1leN9eWVQcvWDVYwNb2GCo5ML_wBEycWD and put the files into the folder **dataset**.

5. Train the Neural Network model (it take many time):
  ```sh
  cd python
  python experiment.py --mode train
  ```
You can directly pass to the **next point**, or you can personalize your experiment by changing the parameter of the NN (see the experiment.py file).

If you train the model, your model will be saved in:
  ```sh
  python/models/ 
  ```
  
6. If you don't want to train the model you can directly refer to the model called **experiment.pt**.

7. Test your model with:
  ```sh
  cd python
  python experiment.py --mode test
  ```
Your predictions will be saved in:
```sh
  python/predictions/ 
  ```

4. Start the MAS:

  ```sh
  cd MAS
  bash startmas.sh 
  ```
5. Start the interaction between the MAS and the Neural Network: 

- Send segmented mask to the MAS:

```sh
  cd src
  python detection.py 
  ```
- Simulate weather station: 

```sh
  cd src
  python weather_simulator.py 
  ```
