.class Lcom/android/settings/RadioInfo$15;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/RadioInfo;->setImsConfigProvisionedState(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;

.field final synthetic val$configItem:I

.field final synthetic val$state:Z


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/RadioInfo$15;->this$0:Lcom/android/settings/RadioInfo;

    iput p2, p0, Lcom/android/settings/RadioInfo$15;->val$configItem:I

    iput-boolean p3, p0, Lcom/android/settings/RadioInfo$15;->val$state:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/RadioInfo$15;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$3700(Lcom/android/settings/RadioInfo;)Lcom/android/ims/ImsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/RadioInfo$15;->val$configItem:I

    iget-boolean v2, p0, Lcom/android/settings/RadioInfo$15;->val$state:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/ims/ImsConfig;->setProvisionedValue(II)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RadioInfo"

    const-string v2, "setImsConfigProvisioned() exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
