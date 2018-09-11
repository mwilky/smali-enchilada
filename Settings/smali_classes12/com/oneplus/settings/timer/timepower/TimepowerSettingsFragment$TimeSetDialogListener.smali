.class Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$TimeSetDialogListener;
.super Ljava/lang/Object;
.source "TimepowerSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeSetDialogListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)V
    .locals 0

    .line 656
    iput-object p1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$TimeSetDialogListener;->this$0:Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 657
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 670
    const-string v0, "TimepowerSettingsFragment"

    const-string v1, "=========TimeSetDialogListener CANCEL======="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 672
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$TimeSetDialogListener;->this$0:Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->access$002(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;Z)Z

    .line 673
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .line 661
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 663
    :cond_0
    nop

    .line 666
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$TimeSetDialogListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 667
    return-void
.end method
