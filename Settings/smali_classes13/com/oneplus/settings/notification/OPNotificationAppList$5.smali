.class Lcom/oneplus/settings/notification/OPNotificationAppList$5;
.super Ljava/lang/Object;
.source "OPNotificationAppList.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/notification/OPNotificationAppList;->refreshDisplayedItems(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

.field final synthetic val$position:I

.field final synthetic val$row:Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/notification/OPNotificationAppList;Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;I)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$5;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    iput-object p2, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$5;->val$row:Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    iput p3, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$5;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$5;->val$row:Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    xor-int/lit8 v2, v0, 0x1

    iput-boolean v2, v1, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->ledDisabled:Z

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$5;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$600(Lcom/oneplus/settings/notification/OPNotificationAppList;)Lcom/android/settings/notification/NotificationBackend;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$5;->val$row:Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    iget-object v2, v2, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/notification/NotificationBackend;->setLedEnabled(Ljava/lang/String;Z)Z

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$5;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$400(Lcom/oneplus/settings/notification/OPNotificationAppList;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$5;->val$position:I

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$5;->val$row:Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$5;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$800(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$5;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v2}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$700(Lcom/oneplus/settings/notification/OPNotificationAppList;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x1

    return v1
.end method
