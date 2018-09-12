.class Lcom/oneplus/aod/clock/OPTextDate$2;
.super Ljava/lang/Object;
.source "OPTextDate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/clock/OPTextDate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/clock/OPTextDate;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/clock/OPTextDate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/aod/clock/OPTextDate;

    .line 187
    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextDate$2;->this$0:Lcom/oneplus/aod/clock/OPTextDate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 189
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate$2;->this$0:Lcom/oneplus/aod/clock/OPTextDate;

    invoke-static {v0}, Lcom/oneplus/aod/clock/OPTextDate;->access$100(Lcom/oneplus/aod/clock/OPTextDate;)V

    .line 191
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 192
    .local v0, "now":J
    const-wide/16 v2, 0x3e8

    rem-long v4, v0, v2

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    .line 194
    .local v2, "next":J
    iget-object v4, p0, Lcom/oneplus/aod/clock/OPTextDate$2;->this$0:Lcom/oneplus/aod/clock/OPTextDate;

    invoke-virtual {v4}, Lcom/oneplus/aod/clock/OPTextDate;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/aod/clock/OPTextDate$2;->this$0:Lcom/oneplus/aod/clock/OPTextDate;

    invoke-static {v5}, Lcom/oneplus/aod/clock/OPTextDate;->access$400(Lcom/oneplus/aod/clock/OPTextDate;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 195
    return-void
.end method
