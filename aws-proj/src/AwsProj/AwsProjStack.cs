using Amazon.CDK;
using Amazon.CDK.AWS.S3;

namespace AwsProj
{
    public class AwsProjStack : Stack
    {
        internal AwsProjStack(Construct scope, string id, IStackProps props = null) : base(scope, id, props)
        {
            // The code that defines your stack goes here
            new Bucket(this,"MyFirstBucket", new BucketProps
            {
                Versioned = true,
                RemovalPolicy = RemovalPolicy.DESTROY
            });
        }

    }
}