.class Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$2;
.super Ljava/lang/Object;
.source "OPQuickLaunchListSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->configureDragAndDrop(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$2;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.action.QUICKPAY_LAUNCH_CATEGORY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$2;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
