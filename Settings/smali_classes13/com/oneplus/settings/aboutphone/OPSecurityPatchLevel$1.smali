.class Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel$1;
.super Ljava/lang/Object;
.source "OPSecurityPatchLevel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel$1;->this$0:Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;->access$000()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel$1;->this$0:Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;

    invoke-static {v1}, Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;->access$100(Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;)Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Stop click action on SECURITY_PATCH_VALUE_ID : queryIntentActivities() returns empty"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel$1;->this$0:Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;

    invoke-static {v1}, Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;->access$200(Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
