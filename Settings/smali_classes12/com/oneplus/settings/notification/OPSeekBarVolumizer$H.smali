.class final Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;
.super Landroid/os/Handler;
.source "OPSeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPSeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final UPDATE_SLIDER:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;


# direct methods
.method private constructor <init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Lcom/oneplus/settings/notification/OPSeekBarVolumizer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;-><init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$200(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$302(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;I)I

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$402(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;I)I

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$500(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1, v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$502(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Z)Z

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$600(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$600(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$500(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z

    move-result v2

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-virtual {v3}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->isZenMuted()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;->onMuted(ZZ)V

    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-virtual {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->updateSeekBar()V

    :cond_2
    return-void
.end method

.method public postUpdateSlider(IIZ)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    mul-int/2addr v1, p2

    invoke-virtual {p0, v0, p1, v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
