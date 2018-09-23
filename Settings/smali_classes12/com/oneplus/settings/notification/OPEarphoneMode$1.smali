.class Lcom/oneplus/settings/notification/OPEarphoneMode$1;
.super Ljava/lang/Object;
.source "OPEarphoneMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/notification/OPEarphoneMode;->confirmCallInformationBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPEarphoneMode;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/notification/OPEarphoneMode;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPEarphoneMode$1;->this$0:Lcom/oneplus/settings/notification/OPEarphoneMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v0, -0x2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPEarphoneMode$1;->this$0:Lcom/oneplus/settings/notification/OPEarphoneMode;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/oneplus/settings/notification/OPEarphoneMode;->access$000(Lcom/oneplus/settings/notification/OPEarphoneMode;Z)V

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPEarphoneMode$1;->this$0:Lcom/oneplus/settings/notification/OPEarphoneMode;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPEarphoneMode;->access$100(Lcom/oneplus/settings/notification/OPEarphoneMode;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "oem_call_information_broadcast"

    invoke-static {v1, v3, v2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPEarphoneMode$1;->this$0:Lcom/oneplus/settings/notification/OPEarphoneMode;

    invoke-static {v0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->access$200(Lcom/oneplus/settings/notification/OPEarphoneMode;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method
