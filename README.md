# s4cmd
Docker container for bloomreach/s4cmd

## Example usage
You can use this container instead of the s4cmd binary. Just replace `s4cmd` with `docker run victorlap/s4cmd`.

For example `docker run victorlap/s4cmd --help` prints:
```
Usage: s4cmd [options]

Super S3 command line tool. Version 2.1.0

Options:
  -h, --help            show this help message and exit
  --version             print out version of s4cmd
  -p S3CFG, --config=S3CFG
                        path to s3cfg config file
  --access-key=ACCESS_KEY
                        use access_key for connection to S3
  --secret-key=SECRET_KEY
                        use security key for connection to S3
  -f, --force           force overwrite files when download or upload
  -r, --recursive       recursively checking subdirectories
  -s, --sync-check      check file md5 before download or upload
  -n, --dry-run         trial run without actual download or upload
  -t RETRY, --retry=RETRY
                        number of retries before giving up
  --retry-delay=RETRY_DELAY
                        seconds to sleep between retries
  -c NUM_THREADS, --num-threads=NUM_THREADS
                        number of concurrent threads
  -d, --show-directory  show directory instead of its content
  --ignore-empty-source
                        ignore empty source from s3
  --endpoint-url=ENDPOINT_URL
                        configure boto3 to use a different s3 endpoint
  --use-ssl             (obsolete) use SSL connection to S3
  --verbose             verbose output
  --debug               debug output
  --validate            (obsolete) validate lookup operation
  -D, --delete-removed  delete remote files that do not exist in source after
                        sync
  --multipart-split-size=MULTIPART_SPLIT_SIZE
                        size in bytes to split multipart transfers
  --max-singlepart-download-size=MAX_SINGLEPART_DOWNLOAD_SIZE
                        files with size (in bytes) greater than this will be
                        downloaded in multipart transfers
  --max-singlepart-upload-size=MAX_SINGLEPART_UPLOAD_SIZE
                        files with size (in bytes) greater than this will be
                        uploaded in multipart transfers
  --max-singlepart-copy-size=MAX_SINGLEPART_COPY_SIZE
                        files with size (in bytes) greater than this will be
                        copied in multipart transfers
  --batch-delete-size=BATCH_DELETE_SIZE
                        Number of files (<1000) to be combined in batch
                        delete.
  --last-modified-before=LAST_MODIFIED_BEFORE
                        Condition on files where their last modified dates are
                        before given parameter.
  --last-modified-after=LAST_MODIFIED_AFTER
                        Condition on files where their last modified dates are
                        after given parameter.
  --API-ACL=ACL         The canned ACL to apply to the object.
  --API-CacheControl=CACHECONTROL
                        Specifies caching behavior along the request/reply
                        chain.
  --API-ContentDisposition=CONTENTDISPOSITION
                        Specifies presentational information for the object.
  --API-ContentEncoding=CONTENTENCODING
                        Specifies what content encodings have been applied to
                        the object and thus what decoding mechanisms must be
                        applied to obtain the media-type referenced by the
                        Content-Type header field.
  --API-ContentLanguage=CONTENTLANGUAGE
                        The language the content is in.
  --API-ContentMD5=CONTENTMD5
                        The base64-encoded 128-bit MD5 digest of the part
                        data.
  --API-ContentType=CONTENTTYPE
                        A standard MIME type describing the format of the
                        object data.
  --API-CopySourceIfMatch=COPYSOURCEIFMATCH
                        Copies the object if its entity tag (ETag) matches the
                        specified tag.
  --API-CopySourceIfModifiedSince=COPYSOURCEIFMODIFIEDSINCE
                        Copies the object if it has been modified since the
                        specified time.
  --API-CopySourceIfNoneMatch=COPYSOURCEIFNONEMATCH
                        Copies the object if its entity tag (ETag) is
                        different than the specified ETag.
  --API-CopySourceIfUnmodifiedSince=COPYSOURCEIFUNMODIFIEDSINCE
                        Copies the object if it hasn't been modified since the
                        specified time.
  --API-CopySourceRange=COPYSOURCERANGE
                        The range of bytes to copy from the source object. The
                        range value must use the form bytes=first-last, where
                        the first and last are the zero-based byte offsets to
                        copy. For example, bytes=0-9 indicates that you want
                        to copy the first ten bytes of the source. You can
                        copy a range only if the source object is greater than
                        5 GB.
  --API-CopySourceSSECustomerAlgorithm=COPYSOURCESSECUSTOMERALGORITHM
                        Specifies the algorithm to use when decrypting the
                        source object (e.g., AES256).
  --API-CopySourceSSECustomerKeyMD5=COPYSOURCESSECUSTOMERKEYMD5
                        Specifies the 128-bit MD5 digest of the encryption key
                        according to RFC 1321. Amazon S3 uses this header for
                        a message integrity check to ensure the encryption key
                        was transmitted without error. Please note that this
                        parameter is automatically populated if it is not
                        provided. Including this parameter is not required
  --API-CopySourceSSECustomerKey=COPYSOURCESSECUSTOMERKEY
                        Specifies the customer-provided encryption key for
                        Amazon S3 to use to decrypt the source object. The
                        encryption key provided in this header must be one
                        that was used when the source object was created.
  --API-ETag=ETAG       Entity tag returned when the part was uploaded.
  --API-Expires=EXPIRES
                        The date and time at which the object is no longer
                        cacheable.
  --API-GrantFullControl=GRANTFULLCONTROL
                        Gives the grantee READ, READ_ACP, and WRITE_ACP
                        permissions on the object.
  --API-GrantReadACP=GRANTREADACP
                        Allows grantee to read the object ACL.
  --API-GrantRead=GRANTREAD
                        Allows grantee to read the object data and its
                        metadata.
  --API-GrantWriteACP=GRANTWRITEACP
                        Allows grantee to write the ACL for the applicable
                        object.
  --API-IfMatch=IFMATCH
                        Return the object only if its entity tag (ETag) is the
                        same as the one specified, otherwise return a 412
                        (precondition failed).
  --API-IfModifiedSince=IFMODIFIEDSINCE
                        Return the object only if it has been modified since
                        the specified time, otherwise return a 304 (not
                        modified).
  --API-IfNoneMatch=IFNONEMATCH
                        Return the object only if its entity tag (ETag) is
                        different from the one specified, otherwise return a
                        304 (not modified).
  --API-IfUnmodifiedSince=IFUNMODIFIEDSINCE
                        Return the object only if it has not been modified
                        since the specified time, otherwise return a 412
                        (precondition failed).
  --API-Metadata=METADATA
                        A map (in json string) of metadata to store with the
                        object in S3
  --API-MetadataDirective=METADATADIRECTIVE
                        Specifies whether the metadata is copied from the
                        source object or replaced with metadata provided in
                        the request.
  --API-MFA=MFA         The concatenation of the authentication device's
                        serial number, a space, and the value that is
                        displayed on your authentication device.
  --API-RequestPayer=REQUESTPAYER
                        Confirms that the requester knows that she or he will
                        be charged for the request. Bucket owners need not
                        specify this parameter in their requests.
                        Documentation on downloading objects from requester
                        pays buckets can be found at http://docs.aws.amazon.co
                        m/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.ht
                        ml
  --API-ServerSideEncryption=SERVERSIDEENCRYPTION
                        The Server-side encryption algorithm used when storing
                        this object in S3 (e.g., AES256, aws:kms).
  --API-SSECustomerAlgorithm=SSECUSTOMERALGORITHM
                        Specifies the algorithm to use to when encrypting the
                        object (e.g., AES256).
  --API-SSECustomerKeyMD5=SSECUSTOMERKEYMD5
                        Specifies the 128-bit MD5 digest of the encryption key
                        according to RFC 1321. Amazon S3 uses this header for
                        a message integrity check to ensure the encryption key
                        was transmitted without error. Please note that this
                        parameter is automatically populated if it is not
                        provided. Including this parameter is not required
  --API-SSECustomerKey=SSECUSTOMERKEY
                        Specifies the customer-provided encryption key for
                        Amazon S3 to use in encrypting data. This value is
                        used to store the object and then it is discarded;
                        Amazon does not store the encryption key. The key must
                        be appropriate for use with the algorithm specified in
                        the x-amz-server-side-encryption-customer-algorithm
                        header.
  --API-SSEKMSKeyId=SSEKMSKEYID
                        Specifies the AWS KMS key ID to use for object
                        encryption. All GET and PUT requests for an object
                        protected by AWS KMS will fail if not made via SSL or
                        using SigV4. Documentation on configuring any of the
                        officially supported AWS SDKs and CLI can be found at
                        http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingAW
                        SSDK.html#specify-signature-version
  --API-StorageClass=STORAGECLASS
                        The type of storage to use for the object. Defaults to
                        'STANDARD'.
  --API-VersionId=VERSIONID
                        VersionId used to reference a specific version of the
                        object.
  --API-WebsiteRedirectLocation=WEBSITEREDIRECTLOCATION
                        If the bucket is configured as a website, redirects
                        requests for this object to another object in the same
                        bucket or to an external URL. Amazon S3 stores the
                        value of this header in the object metadata.
```
