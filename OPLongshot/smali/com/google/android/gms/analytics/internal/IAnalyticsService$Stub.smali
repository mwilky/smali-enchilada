.class public abstract Lcom/google/android/gms/analytics/internal/IAnalyticsService$Stub;
.super Landroid/os/Binder;
.source "IAnalyticsService.java"

# interfaces
.implements Lcom/google/android/gms/analytics/internal/IAnalyticsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/internal/IAnalyticsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/analytics/internal/IAnalyticsService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.android.gms.analytics.internal.IAnalyticsService"

.field static final TRANSACTION_clearHits:I = 0x2

.field static final TRANSACTION_sendHit:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.google.android.gms.analytics.internal.IAnalyticsService"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/analytics/internal/IAnalyticsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/analytics/internal/IAnalyticsService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.analytics.internal.IAnalyticsService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/analytics/internal/IAnalyticsService;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/analytics/internal/IAnalyticsService;

    return-object v1

    :cond_1
    new-instance v1, Lcom/google/android/gms/analytics/internal/IAnalyticsService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/google/android/gms/analytics/internal/IAnalyticsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p2

    const v2, 0x5f4e5446

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    :pswitch_0
    const-string v2, "com.google.android.gms.analytics.internal.IAnalyticsService"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/IAnalyticsService$Stub;->clearHits()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :pswitch_1
    const-string v2, "com.google.android.gms.analytics.internal.IAnalyticsService"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    sget-object v4, Lcom/google/android/gms/analytics/internal/Command;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v14

    move-object v4, p0

    move-object v5, v10

    move-wide v6, v11

    move-object v8, v13

    move-object v9, v14

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/analytics/internal/IAnalyticsService$Stub;->sendHit(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :cond_0
    const-string v2, "com.google.android.gms.analytics.internal.IAnalyticsService"

    move-object/from16 v4, p3

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
