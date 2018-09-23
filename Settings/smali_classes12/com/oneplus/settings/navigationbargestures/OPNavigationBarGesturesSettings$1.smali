.class Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings$1;
.super Ljava/lang/Object;
.source "OPNavigationBarGesturesSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->delayHideNavkey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings$1;->this$0:Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings$1;->this$0:Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;

    invoke-static {v0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->access$000(Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;)Lcom/android/settings/ui/RadioButtonPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings$1;->this$0:Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;

    invoke-static {v0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->access$100(Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;)Lcom/android/settings/ui/RadioButtonPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings$1;->this$0:Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;

    invoke-static {v0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->access$200(Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;)Lcom/android/settings/ui/RadioButtonPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings$1;->this$0:Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;

    invoke-static {v0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->access$300(Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;)V

    return-void
.end method
