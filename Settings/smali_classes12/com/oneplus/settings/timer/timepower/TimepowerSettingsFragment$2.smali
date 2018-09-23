.class Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$2;
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

    iput-object p1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$2;->this$0:Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$2;->this$0:Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;

    invoke-static {v0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->access$000(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$2;->this$0:Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$2;->this$0:Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->access$100(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;I)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->access$200(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;Landroid/content/Intent;I)V

    return v2
.end method
