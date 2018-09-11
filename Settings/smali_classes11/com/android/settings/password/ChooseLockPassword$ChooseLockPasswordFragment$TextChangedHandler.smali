.class Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;
.super Landroid/os/Handler;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TextChangedHandler"
.end annotation


# static fields
.field private static final DELAY_IN_MILLISECOND:I = 0x64

.field private static final ON_TEXT_CHANGED:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    .line 1001
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;->this$0:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;

    .line 1001
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;->notifyAfterTextChanged()V

    return-void
.end method

.method private notifyAfterTextChanged()V
    .locals 3

    .line 1010
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;->removeMessages(I)V

    .line 1011
    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1012
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 1016
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;->this$0:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1017
    return-void

    .line 1019
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1020
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;->this$0:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    .line 1022
    :cond_1
    return-void
.end method
