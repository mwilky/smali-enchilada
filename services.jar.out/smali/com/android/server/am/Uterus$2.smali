.class Lcom/android/server/am/Uterus$2;
.super Ljava/lang/Object;
.source "Uterus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/Uterus;->notifyMDM(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/Uterus;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$versionName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/Uterus;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/Uterus$2;->this$0:Lcom/android/server/am/Uterus;

    iput-object p2, p0, Lcom/android/server/am/Uterus$2;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/Uterus$2;->val$versionName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/Uterus$2;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v0}, Lcom/android/server/am/Uterus;->access$500(Lcom/android/server/am/Uterus;)Lnet/oneplus/odm/insight/tracker/OSTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "pn"

    iget-object v2, p0, Lcom/android/server/am/Uterus$2;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "pvn"

    iget-object v2, p0, Lcom/android/server/am/Uterus$2;->val$versionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/am/Uterus$2;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v1}, Lcom/android/server/am/Uterus;->access$500(Lcom/android/server/am/Uterus;)Lnet/oneplus/odm/insight/tracker/OSTracker;

    move-result-object v1

    const-string v2, "embryo_crash"

    invoke-virtual {v1, v2, v0}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
