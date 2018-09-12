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
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "label"    # Ljava/lang/CharSequence;
    .param p6, "isHighBattery"    # Z
    .param p7, "contentDescription"    # Ljava/lang/CharSequence;
    .param p8, "requestFinishTime"    # J

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p1, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->packageName:Ljava/lang/String;

    .line 238
    iput-object p3, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->userHandle:Landroid/os/UserHandle;

    .line 239
    iput-object p4, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->icon:Landroid/graphics/drawable/Drawable;

    .line 240
    iput-object p5, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->label:Ljava/lang/CharSequence;

    .line 241
    iput-boolean p6, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->isHighBattery:Z

    .line 242
    iput-object p7, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->contentDescription:Ljava/lang/CharSequence;

    .line 243
    iput-wide p8, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->requestFinishTime:J

    .line 244
    iput p2, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->uid:I

    .line 245
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILandroid/os/UserHandle;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;JLcom/android/settingslib/location/RecentLocationApps$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroid/os/UserHandle;
    .param p4, "x3"    # Landroid/graphics/drawable/Drawable;
    .param p5, "x4"    # Ljava/lang/CharSequence;
    .param p6, "x5"    # Z
    .param p7, "x6"    # Ljava/lang/CharSequence;
    .param p8, "x7"    # J
    .param p10, "x8"    # Lcom/android/settingslib/location/RecentLocationApps$1;

    .line 206
    invoke-direct/range {p0 .. p9}, Lcom/android/settingslib/location/RecentLocationApps$Request;-><init>(Ljava/lang/String;ILandroid/os/UserHandle;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;J)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;J)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "label"    # Ljava/lang/CharSequence;
    .param p5, "isHighBattery"    # Z
    .param p6, "contentDescription"    # Ljava/lang/CharSequence;
    .param p7, "requestFinishTime"    # J

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->packageName:Ljava/lang/String;

    .line 223
    iput-object p2, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->userHandle:Landroid/os/UserHandle;

    .line 224
    iput-object p3, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->icon:Landroid/graphics/drawable/Drawable;

    .line 225
    iput-object p4, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->label:Ljava/lang/CharSequence;

    .line 226
    iput-boolean p5, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->isHighBattery:Z

    .line 227
    iput-object p6, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->contentDescription:Ljava/lang/CharSequence;

    .line 228
    iput-wide p7, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->requestFinishTime:J

    .line 230
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->uid:I

    .line 233
    return-void
.end method
