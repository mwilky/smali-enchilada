.class Lcom/oneplus/screenshot/service/GlobalNotification$SaveError;
.super Lcom/oneplus/screenshot/service/GlobalNotification$Builder;
.source "GlobalNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/service/GlobalNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveError"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/service/GlobalNotification;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/service/GlobalNotification;Landroid/graphics/Bitmap;)V
    .locals 2

    iput-object p1, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveError;->this$0:Lcom/oneplus/screenshot/service/GlobalNotification;

    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;-><init>(Lcom/oneplus/screenshot/service/GlobalNotification;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveError;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveError;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0c0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object p1, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveError;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveError;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0c001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object p1, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveError;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    iget-object p1, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveError;->mBuilder:Landroid/app/Notification$Builder;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    return-void
.end method


# virtual methods
.method protected getBigContentViews()Landroid/widget/RemoteViews;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getContentViews()Landroid/widget/RemoteViews;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSmallIcon()I
    .locals 1

    const v0, 0x7f020031

    return v0
.end method

.method protected getTicker()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveError;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0c0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
