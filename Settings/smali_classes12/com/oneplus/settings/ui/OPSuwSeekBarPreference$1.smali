.class Lcom/oneplus/settings/ui/OPSuwSeekBarPreference$1;
.super Ljava/lang/Object;
.source "OPSuwSeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;->initSeekBar(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;

    .line 72
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPSuwSeekBarPreference$1;->this$0:Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 78
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPSuwSeekBarPreference$1;->this$0:Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;->mOPColorModeSeekBarChangeListener:Lcom/oneplus/settings/ui/OPSuwSeekBarPreference$OPColorModeSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPSuwSeekBarPreference$1;->this$0:Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;->mOPColorModeSeekBarChangeListener:Lcom/oneplus/settings/ui/OPSuwSeekBarPreference$OPColorModeSeekBarChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/oneplus/settings/ui/OPSuwSeekBarPreference$OPColorModeSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 81
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 86
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPSuwSeekBarPreference$1;->this$0:Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;->mOPColorModeSeekBarChangeListener:Lcom/oneplus/settings/ui/OPSuwSeekBarPreference$OPColorModeSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPSuwSeekBarPreference$1;->this$0:Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;->mOPColorModeSeekBarChangeListener:Lcom/oneplus/settings/ui/OPSuwSeekBarPreference$OPColorModeSeekBarChangeListener;

    invoke-interface {v0, p1}, Lcom/oneplus/settings/ui/OPSuwSeekBarPreference$OPColorModeSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 89
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 94
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPSuwSeekBarPreference$1;->this$0:Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;->mOPColorModeSeekBarChangeListener:Lcom/oneplus/settings/ui/OPSuwSeekBarPreference$OPColorModeSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPSuwSeekBarPreference$1;->this$0:Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;->mOPColorModeSeekBarChangeListener:Lcom/oneplus/settings/ui/OPSuwSeekBarPreference$OPColorModeSeekBarChangeListener;

    invoke-interface {v0, p1}, Lcom/oneplus/settings/ui/OPSuwSeekBarPreference$OPColorModeSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 97
    :cond_0
    return-void
.end method
