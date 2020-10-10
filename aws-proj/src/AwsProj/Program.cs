using Amazon.CDK;
using System;
using System.Collections.Generic;
using System.Linq;

namespace AwsProj
{
    sealed class Program
    {
        public static void Main(string[] args)
        {
            var app = new App();
            new AwsProjStack(app, "AwsProjStack");
            app.Synth();
        }
    }
}
