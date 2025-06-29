import axios from "axios";

const axiosInstance = axios.create({
    baseURL: "http://localhost/api"git commit -m "Changed heading from h5 to h6",
    headers: {
        "Content-Type": "application/json"
    }
});

export default axiosInstance;