.class Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;
.super Ljava/lang/Object;
.source "RegionSearchPicker.java"

# interfaces
.implements Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datetime/timezone/RegionSearchPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RegionItem"
.end annotation


# instance fields
.field private final mId:Ljava/lang/String;

.field private final mItemId:J

.field private final mName:Ljava/lang/String;

.field private final mSearchKeys:[Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;->mId:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;->mName:Ljava/lang/String;

    iput-wide p1, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;->mItemId:J

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;->mId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;->mName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;->mSearchKeys:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCurrentTime()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;->mItemId:J

    return-wide v0
.end method

.method public getSearchKeys()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;->mSearchKeys:[Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;->mName:Ljava/lang/String;

    return-object v0
.end method
