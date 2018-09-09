.class Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$2;
.super Ljava/lang/Object;
.source "OnePlusAmUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->sendApplicationStart(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;

    .line 352
    iput-object p1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$2;->this$0:Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$2;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$2;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationStart(Landroid/content/Context;Ljava/lang/String;)V

    .line 355
    return-void
.end method
