# Example Helm Chart

This repository contains a Helm chart template for creating Kubernetes applications. The chart is designed to be a starting point for building your own Helm charts.

## Structure

The repository has the following structure:

- **Chart.yaml**: Contains metadata about the chart, such as its name, version, and description.
- **values.yaml**: Defines the default configuration values for the chart.
- **templates/**: Contains the Kubernetes resource templates that will be rendered using the values from `values.yaml`.
  - **\_helpers.tpl**: Contains helper templates that can be used throughout the chart.
  - **deployment.yaml**: Template for creating a Kubernetes Deployment.
  - **hpa.yaml**: Template for creating a Horizontal Pod Autoscaler.
  - **ingress.yaml**: Template for creating an Ingress resource.
  - **NOTES.txt**: Instructions displayed after the chart is installed.
  - **service.yaml**: Template for creating a Kubernetes Service.
  - **serviceaccount.yaml**: Template for creating a ServiceAccount.
  - **tests/**: Contains test templates to verify the chart's functionality.
    - **test-connection.yaml**: Template for a test Pod to check the connection.

## Create New Chart

You can create a new Helm chart based on this template using the following command:

```bash
bash <(wget -qO- https://raw.githubusercontent.com/FmTod2/helm-chart-template/refs/heads/setup/create.sh) <chart-name>
```

## Usage

1. Clone the repository:

   ```bash
   git clone --depth=1 https://github.com/FmTod2/helm-chart-template my-chart
   ```

2. Remove the existing Git history:

   ```bash
   cd my-chart
   rm -rf .git
   ```

3. Replace the chart name in `Chart.yaml` and template files:

   ```bash
   grep -rl 'example' . | xargs sed -i 's/example/my-chart/g'
   ```

4. Customize the chart by modifying the `values.yaml` and template files in the `templates/` directory.
