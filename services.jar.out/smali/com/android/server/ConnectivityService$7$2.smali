.class Lcom/android/server/ConnectivityService$7$2;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ConnectivityService$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/ConnectivityService$7;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService$7;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ConnectivityService$7$2;->this$1:Lcom/android/server/ConnectivityService$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/ConnectivityService$7$2;->this$1:Lcom/android/server/ConnectivityService$7;

    iget-object v0, v0, Lcom/android/server/ConnectivityService$7;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, p2}, Lcom/android/server/ConnectivityService;->access$5202(Lcom/android/server/ConnectivityService;Z)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkBoxListener notShowAgain:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$7$2;->this$1:Lcom/android/server/ConnectivityService$7;

    iget-object v1, v1, Lcom/android/server/ConnectivityService$7;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$5200(Lcom/android/server/ConnectivityService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$000(Ljava/lang/String;)V

    return-void
.end method
