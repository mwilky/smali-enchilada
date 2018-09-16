.class Lcom/oneplus/onlineconfig/FingerprintConfig$1;
.super Ljava/lang/Object;
.source "FingerprintConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/onlineconfig/FingerprintConfig;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/onlineconfig/FingerprintConfig;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/oneplus/onlineconfig/FingerprintConfig;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/onlineconfig/FingerprintConfig;

    .line 53
    iput-object p1, p0, Lcom/oneplus/onlineconfig/FingerprintConfig$1;->this$0:Lcom/oneplus/onlineconfig/FingerprintConfig;

    iput-object p2, p0, Lcom/oneplus/onlineconfig/FingerprintConfig$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 57
    const-string v0, "FingerprintConfig"

    const-string v1, "Take the initiative in retrieving online config"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/oneplus/onlineconfig/FingerprintConfig$1;->val$context:Landroid/content/Context;

    .line 59
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "fingerprintConfig"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    iget-object v1, p0, Lcom/oneplus/onlineconfig/FingerprintConfig$1;->this$0:Lcom/oneplus/onlineconfig/FingerprintConfig;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/onlineconfig/FingerprintConfig;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    .line 61
    return-void
.end method
