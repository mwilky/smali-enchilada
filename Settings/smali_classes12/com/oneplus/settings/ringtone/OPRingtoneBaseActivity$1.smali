.class Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$1;
.super Ljava/lang/Object;
.source "OPRingtoneBaseActivity.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    .line 168
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1
    .param p1, "focusChange"    # I

    .line 171
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    invoke-static {v0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->access$000(Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    invoke-virtual {v0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->stopAnyPlayingRingtone()V

    .line 176
    :cond_0
    return-void
.end method
