.class Lcom/android/settings/TimeoutListPreference$1;
.super Ljava/lang/Object;
.source "TimeoutListPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TimeoutListPreference;->onDialogCreated(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TimeoutListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/TimeoutListPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/TimeoutListPreference;

    .line 62
    iput-object p1, p0, Lcom/android/settings/TimeoutListPreference$1;->this$0:Lcom/android/settings/TimeoutListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 65
    iget-object v0, p0, Lcom/android/settings/TimeoutListPreference$1;->this$0:Lcom/android/settings/TimeoutListPreference;

    .line 66
    invoke-virtual {v0}, Lcom/android/settings/TimeoutListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TimeoutListPreference$1;->this$0:Lcom/android/settings/TimeoutListPreference;

    invoke-static {v1}, Lcom/android/settings/TimeoutListPreference;->access$000(Lcom/android/settings/TimeoutListPreference;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    .line 65
    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 67
    return-void
.end method
