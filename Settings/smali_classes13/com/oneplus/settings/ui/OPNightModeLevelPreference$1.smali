.class Lcom/oneplus/settings/ui/OPNightModeLevelPreference$1;
.super Ljava/lang/Object;
.source "OPNightModeLevelPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/ui/OPNightModeLevelPreference;->initSeekBar(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPNightModeLevelPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreference$1;->this$0:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreference$1;->this$0:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPNightModeLevelPreference;->mOPNightModeLevelPreferenceChangeListener:Lcom/oneplus/settings/ui/OPNightModeLevelPreference$OPNightModeLevelPreferenceChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreference$1;->this$0:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPNightModeLevelPreference;->mOPNightModeLevelPreferenceChangeListener:Lcom/oneplus/settings/ui/OPNightModeLevelPreference$OPNightModeLevelPreferenceChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/oneplus/settings/ui/OPNightModeLevelPreference$OPNightModeLevelPreferenceChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreference$1;->this$0:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPNightModeLevelPreference;->mOPNightModeLevelPreferenceChangeListener:Lcom/oneplus/settings/ui/OPNightModeLevelPreference$OPNightModeLevelPreferenceChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreference$1;->this$0:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPNightModeLevelPreference;->mOPNightModeLevelPreferenceChangeListener:Lcom/oneplus/settings/ui/OPNightModeLevelPreference$OPNightModeLevelPreferenceChangeListener;

    invoke-interface {v0, p1}, Lcom/oneplus/settings/ui/OPNightModeLevelPreference$OPNightModeLevelPreferenceChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreference$1;->this$0:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPNightModeLevelPreference;->mOPNightModeLevelPreferenceChangeListener:Lcom/oneplus/settings/ui/OPNightModeLevelPreference$OPNightModeLevelPreferenceChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreference$1;->this$0:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPNightModeLevelPreference;->mOPNightModeLevelPreferenceChangeListener:Lcom/oneplus/settings/ui/OPNightModeLevelPreference$OPNightModeLevelPreferenceChangeListener;

    invoke-interface {v0, p1}, Lcom/oneplus/settings/ui/OPNightModeLevelPreference$OPNightModeLevelPreferenceChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method
