.class Landroid/os/RecoverySystem$2$1;
.super Ljava/lang/Object;
.source "RecoverySystem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/RecoverySystem$2;->onProgress(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/RecoverySystem$2;

.field final synthetic val$now:J

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Landroid/os/RecoverySystem$2;IJ)V
    .locals 0

    iput-object p1, p0, Landroid/os/RecoverySystem$2$1;->this$0:Landroid/os/RecoverySystem$2;

    iput p2, p0, Landroid/os/RecoverySystem$2$1;->val$progress:I

    iput-wide p3, p0, Landroid/os/RecoverySystem$2$1;->val$now:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget v0, p0, Landroid/os/RecoverySystem$2$1;->val$progress:I

    iget-object v1, p0, Landroid/os/RecoverySystem$2$1;->this$0:Landroid/os/RecoverySystem$2;

    iget v1, v1, Landroid/os/RecoverySystem$2;->lastProgress:I

    const/16 v2, 0x64

    if-le v0, v1, :cond_0

    iget-wide v0, p0, Landroid/os/RecoverySystem$2$1;->val$now:J

    iget-object v3, p0, Landroid/os/RecoverySystem$2$1;->this$0:Landroid/os/RecoverySystem$2;

    iget-wide v3, v3, Landroid/os/RecoverySystem$2;->lastPublishTime:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x1f4

    cmp-long v0, v0, v3

    if-gtz v0, :cond_1

    :cond_0
    iget v0, p0, Landroid/os/RecoverySystem$2$1;->val$progress:I

    if-ne v0, v2, :cond_3

    :cond_1
    iget v0, p0, Landroid/os/RecoverySystem$2$1;->val$progress:I

    if-ne v0, v2, :cond_2

    const-string v0, "RecoverySystem"

    const-string v1, "100% complete process the ota package , notify the result"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Landroid/os/RecoverySystem$2$1;->this$0:Landroid/os/RecoverySystem$2;

    iget v1, p0, Landroid/os/RecoverySystem$2$1;->val$progress:I

    iput v1, v0, Landroid/os/RecoverySystem$2;->lastProgress:I

    iget-object v0, p0, Landroid/os/RecoverySystem$2$1;->this$0:Landroid/os/RecoverySystem$2;

    iget-wide v1, p0, Landroid/os/RecoverySystem$2$1;->val$now:J

    iput-wide v1, v0, Landroid/os/RecoverySystem$2;->lastPublishTime:J

    iget-object v0, p0, Landroid/os/RecoverySystem$2$1;->this$0:Landroid/os/RecoverySystem$2;

    iget-object v0, v0, Landroid/os/RecoverySystem$2;->val$listener:Landroid/os/RecoverySystem$ProgressListener;

    iget v1, p0, Landroid/os/RecoverySystem$2$1;->val$progress:I

    invoke-interface {v0, v1}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    :cond_3
    return-void
.end method
