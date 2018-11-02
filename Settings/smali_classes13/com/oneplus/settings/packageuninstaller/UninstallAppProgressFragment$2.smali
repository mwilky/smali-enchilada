.class Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment$2;
.super Ljava/lang/Object;
.source "UninstallAppProgressFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment$2;->this$0:Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.USER_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment$2;->this$0:Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;

    invoke-virtual {v1, v0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment$2;->this$0:Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;

    invoke-virtual {v1}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void
.end method
