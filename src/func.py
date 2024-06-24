import io
import json
import logging

from fdk import response


def handler(ctx, data: io.BytesIO = None):
    name = "World"
    try:
        body = json.loads(data.getvalue())
        name = body.get("name")
        logging.getLogger().info("Inside Python Hello World function")
        return response.Response(
            ctx, response_data=json.dumps(
                {"message": "Hello {0}".format(name)}),
            headers={"Content-Type": "application/json"}
        )
    except:
        return response.Response(
            ctx, response_data=json.dumps(
                {"message": "Hello Worldf"}),
            headers={"Content-Type": "application/json"}
        )
