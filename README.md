# Master Branch

Master branch pada repo ini berisi tentang konfigurasi kubernetes dan link

## Project Branch
### Master
~~~
.
├── kubernetes
│   ├── backend
│   │   ├── karsajobs-deployment.yml
│   │   └── karsajobs-service.yaml
│   ├── deploy_all.sh
│   ├── frontend
│   │   ├── karsajobs-ui-deployment.yml
│   │   └── karsajobs-ui-service.yml
│   ├── istio
│   │   ├── gateway.yml
│   │   └── order-virtual-service.yml
│   ├── mongodb
│   │   ├── mongo-configmap.yml
│   │   ├── mongo-pv-pvc.yml
│   │   ├── mongo-secret.yml
│   │   ├── mongo-service.yml
│   │   └── mongo-statefulset.yml
│   ├── order
│   │   ├── order-deployment.yml
│   │   └── order-service.yml
│   ├── rabbitmq
│   │   ├── rabbitmq-pv-pvc.yml
│   │   ├── rabbitmq-service.yml
│   │   └── rabbitmq-statefulset.yml
│   ├── reset.sh
│   └── shipping
│       ├── shipping-deployment.yml
│       └── shipping-service.yml
├── link.txt
└── README.md
~~~
### order-services
~~~
.
├── build_push_image.sh
├── Dockerfile
├── index.js
├── package.json
├── package-lock.json
└── README.md
~~~
### shipping-services
~~~
.
├── build_push_image.sh
├── Dockerfile
├── index.js
├── package.json
├── package-lock.json
└── README.md
~~~