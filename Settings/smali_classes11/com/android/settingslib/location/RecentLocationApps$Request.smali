.class public Lcom/android/settingslib/location/RecentLocationApps$Request;
.super Ljava/lang/Object;
.source "RecentLocationApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/location/RecentLocationApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# instance fields
.field public final contentDescription:Ljava/lang/CharSequence;

.field public final icon:Landroid/graphics/drawable/Drawable;

.field public final isHighBattery:Z

.field public final label:Ljava/lang/CharSequence;

.field public final packageName:Ljava/lang/String;

.field public final requestFinishTime:J

.field public final uid:I

.field public final userHandle:Landroid/os/UserHandle;


# direct methods
.method private constructor <init>(Ljava/lang/String;ILandroid/os/UserHandle;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->userHandle:Landroid/os/UserHandle;

    iput-object p4, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->icon:Landroid/graphics/drawable/Drawable;

    iput-object p5, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->label:Ljava/lang/CharSequence;

    iput-boolean p6, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->isHighBattery:Z

    iput-object p7, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->contentDescription:Ljava/lang/CharSequence;

    iput-wide p8, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->requestFinishTime:J

    iput p2, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->uid:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILandroid/os/UserHandle;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;JLcom/android/settingslib/location/RecentLocationApps$1;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/settingslib/location/RecentLocationApps$Request;-><init>(Ljava/lang/String;ILandroid/os/UserHandle;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;J)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->userHandle:Landroid/os/UserHandle;

    iput-object p3, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->icon:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->label:Ljava/lang/CharSequence;

    iput-boolean p5, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->isHighBattery:Z

    iput-object p6, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->contentDescription:Ljava/lang/CharSequence;

    iput-wide p7, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->requestFinishTime:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->uid:I

    return-void
.end method
