.class Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$4;
.super Ljava/lang/Object;
.source "TimepowerSettingsFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;

    .line 183
    iput-object p1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$4;->this$0:Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "arg0"    # Landroid/support/v7/preference/Preference;

    .line 188
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$4;->this$0:Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;

    invoke-static {v0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->access$000(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 189
    return v1

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$4;->this$0:Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;

    iget-object v2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$4;->this$0:Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;

    .line 192
    invoke-static {v2, v1}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->access$100(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;I)Landroid/content/Intent;

    move-result-object v2

    .line 191
    invoke-static {v0, v2, v1}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->access$200(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;Landroid/content/Intent;I)V

    .line 194
    const/4 v0, 0x0

    return v0
.end method
