.class Landroid/arch/lifecycle/ProcessLifecycleOwner$2;
.super Ljava/lang/Object;
.source "ProcessLifecycleOwner.java"

# interfaces
.implements Landroid/arch/lifecycle/ReportFragment$ActivityInitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/ProcessLifecycleOwner;
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

    .line 73
    iput-object p1, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner$2;->this$0:Landroid/arch/lifecycle/ProcessLifecycleOwner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 76
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 85
    iget-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner$2;->this$0:Landroid/arch/lifecycle/ProcessLifecycleOwner;

    invoke-virtual {v0}, Landroid/arch/lifecycle/ProcessLifecycleOwner;->activityResumed()V

    .line 86
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 80
    iget-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner$2;->this$0:Landroid/arch/lifecycle/ProcessLifecycleOwner;

    invoke-virtual {v0}, Landroid/arch/lifecycle/ProcessLifecycleOwner;->activityStarted()V

    .line 81
    return-void
.end method
