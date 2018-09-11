.class Landroid/arch/lifecycle/ProcessLifecycleOwner$3;
.super Landroid/arch/lifecycle/EmptyActivityLifecycleCallbacks;
.source "ProcessLifecycleOwner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/arch/lifecycle/ProcessLifecycleOwner;->attach(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/arch/lifecycle/ProcessLifecycleOwner;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/ProcessLifecycleOwner;)V
    .locals 0
    .param p1, "this$0"    # Landroid/arch/lifecycle/ProcessLifecycleOwner;

    .line 158
    iput-object p1, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner$3;->this$0:Landroid/arch/lifecycle/ProcessLifecycleOwner;

    invoke-direct {p0}, Landroid/arch/lifecycle/EmptyActivityLifecycleCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 161
    invoke-static {p1}, Landroid/arch/lifecycle/ReportFragment;->get(Landroid/app/Activity;)Landroid/arch/lifecycle/ReportFragment;

    move-result-object v0

    iget-object v1, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner$3;->this$0:Landroid/arch/lifecycle/ProcessLifecycleOwner;

    invoke-static {v1}, Landroid/arch/lifecycle/ProcessLifecycleOwner;->access$200(Landroid/arch/lifecycle/ProcessLifecycleOwner;)Landroid/arch/lifecycle/ReportFragment$ActivityInitializationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/ReportFragment;->setProcessListener(Landroid/arch/lifecycle/ReportFragment$ActivityInitializationListener;)V

    .line 162
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 166
    iget-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner$3;->this$0:Landroid/arch/lifecycle/ProcessLifecycleOwner;

    invoke-virtual {v0}, Landroid/arch/lifecycle/ProcessLifecycleOwner;->activityPaused()V

    .line 167
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 171
    iget-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner$3;->this$0:Landroid/arch/lifecycle/ProcessLifecycleOwner;

    invoke-virtual {v0}, Landroid/arch/lifecycle/ProcessLifecycleOwner;->activityStopped()V

    .line 172
    return-void
.end method
