.class public abstract Lcom/android/settings/search/InlinePayload;
.super Lcom/android/settings/search/ResultPayload;
.source "InlinePayload.java"


# static fields
.field public static final FALSE:I = 0x0

.field public static final TRUE:I = 0x1


# instance fields
.field final mDefaultvalue:I

.field final mIsDeviceSupported:Z

.field private final mSettingKey:Ljava/lang/String;

.field final mSettingSource:I


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/settings/search/ResultPayload;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/InlinePayload;->mSettingKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/search/InlinePayload;->mSettingSource:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/search/InlinePayload;->mIsDeviceSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/search/InlinePayload;->mDefaultvalue:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/content/Intent;ZI)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/android/settings/search/ResultPayload;-><init>(Landroid/content/Intent;)V

    iput-object p1, p0, Lcom/android/settings/search/InlinePayload;->mSettingKey:Ljava/lang/String;

    iput p2, p0, Lcom/android/settings/search/InlinePayload;->mSettingSource:I

    iput-boolean p4, p0, Lcom/android/settings/search/InlinePayload;->mIsDeviceSupported:Z

    iput p5, p0, Lcom/android/settings/search/InlinePayload;->mDefaultvalue:I

    return-void
.end method


# virtual methods
.method public getAvailability()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/search/InlinePayload;->mIsDeviceSupported:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/search/InlinePayload;->mSettingKey:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getType()I
.end method

.method public getValue(Landroid/content/Context;)I
    .locals 4

    const/4 v0, -0x1

    iget v1, p0, Lcom/android/settings/search/InlinePayload;->mSettingSource:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/search/InlinePayload;->mSettingKey:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/search/InlinePayload;->mDefaultvalue:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/search/InlinePayload;->mSettingKey:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/search/InlinePayload;->mDefaultvalue:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/search/InlinePayload;->mSettingKey:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/search/InlinePayload;->mDefaultvalue:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/search/InlinePayload;->standardizeInput(I)I

    move-result v1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setValue(Landroid/content/Context;I)Z
    .locals 2

    invoke-virtual {p0, p2}, Lcom/android/settings/search/InlinePayload;->standardizeInput(I)I

    move-result p2

    iget v0, p0, Lcom/android/settings/search/InlinePayload;->mSettingSource:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/search/InlinePayload;->mSettingKey:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0

    :pswitch_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/search/InlinePayload;->mSettingKey:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0

    :pswitch_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/search/InlinePayload;->mSettingKey:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0

    :pswitch_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract standardizeInput(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settings/search/ResultPayload;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/android/settings/search/InlinePayload;->mSettingKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/settings/search/InlinePayload;->mSettingSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/settings/search/InlinePayload;->mIsDeviceSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/settings/search/InlinePayload;->mDefaultvalue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
