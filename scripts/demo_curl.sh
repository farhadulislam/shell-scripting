curl is a versatile command-line tool used for transferring data to and from servers using various protocols such as HTTP, HTTPS, FTP, and more. Here are some useful curl commands that you can use in Bash:

1. Basic GET Request
bash
Copy code
curl https://api.example.com/resource
This command performs a simple HTTP GET request to retrieve data from the specified URL.

2. Download a File
bash
Copy code
curl -O https://example.com/file.zip
The -O option saves the file with its original name from the server. This is useful for downloading files.

3. Download a File with a Specific Name
bash
Copy code
curl -o newfile.zip https://example.com/file.zip
The -o option allows you to specify the filename under which the file will be saved.

4. Send Data with a POST Request
bash
Copy code
curl -X POST -d "name=John&age=30" https://api.example.com/resource
The -X POST option specifies the request method, and -d sends the data in the request body.

5. POST Request with JSON Data
bash
Copy code
curl -X POST -H "Content-Type: application/json" -d '{"name": "John", "age": 30}' https://api.example.com/resource
This sends a POST request with JSON data. The -H option is used to set the content type to application/json.

6. Include Headers in the Response
bash
Copy code
curl -i https://api.example.com/resource
The -i option includes the HTTP response headers in the output.

7. Include Custom Headers in the Request
bash
Copy code
curl -H "Authorization: Bearer your_token_here" https://api.example.com/resource
The -H option allows you to add custom headers to your request, such as an Authorization header.

8. Follow Redirects
bash
Copy code
curl -L https://example.com/redirect
The -L option tells curl to follow any HTTP redirects until it reaches the final destination.

9. Save Output to a File
bash
Copy code
curl https://example.com/resource -o output.txt
This saves the output of the curl command to a file named output.txt.

10. Upload a File via POST
bash
Copy code
curl -X POST -F "file=@/path/to/file" https://api.example.com/upload
The -F option is used to upload files as form data. This is commonly used for file uploads to web servers.

11. Send Multiple Headers
bash
Copy code
curl -H "Authorization: Bearer your_token_here" -H "Content-Type: application/json" https://api.example.com/resource
You can send multiple headers by using the -H option multiple times.

12. Get Only the HTTP Response Code
bash
Copy code
curl -o /dev/null -s -w "%{http_code}\n" https://example.com
This command outputs only the HTTP status code of the response. The -o /dev/null discards the body of the response, -s silences the progress meter, and -w allows you to format the output.

13. Limit Download Speed
bash
Copy code
curl --limit-rate 100k https://example.com/largefile.zip -O
The --limit-rate option limits the download speed to 100 KB/s, which can be useful when bandwidth is limited.

14. Basic Authentication
bash
Copy code
curl -u username:password https://api.example.com/resource
The -u option allows you to specify the username and password for basic HTTP authentication.

15. View the Response Time
bash
Copy code
curl -o /dev/null -s -w "Time: %{time_total}\n" https://example.com
This command outputs the total time taken for the request.

16. Access an FTP Server
bash
Copy code
curl ftp://ftp.example.com --user username:password
You can use curl to interact with FTP servers by specifying the FTP protocol and credentials.

17. Pass Data from a File
bash
Copy code
curl -d @data.json https://api.example.com/resource
The -d @data.json option allows you to pass the contents of a file (data.json) as the data for a POST request.

18. Perform a PUT Request
bash
Copy code
curl -X PUT -d '{"name": "John", "age": 30}' -H "Content-Type: application/json" https://api.example.com/resource/1
The -X PUT option specifies that you want to perform a PUT request, often used for updating resources.

19. Get Help with Curl Options
bash
Copy code
curl --help
This command lists all available options and usage instructions for curl.

These examples should cover a wide range of common use cases when working with curl in Bash.








