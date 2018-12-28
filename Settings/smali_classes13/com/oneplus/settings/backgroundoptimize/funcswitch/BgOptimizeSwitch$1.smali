.class Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch$1;
.super Ljava/lang/Object;
.source "BgOptimizeSwitch.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->confirmDeepOptimization()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch$1;->this$0:Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch$1;->this$0:Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;

    invoke-static {v0}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->access$000(Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->setAppControlState(II)I

    const-string v0, "battery_deep"

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch$1;->this$0:Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;

    iget-object v0, v0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->switchPreference:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method
