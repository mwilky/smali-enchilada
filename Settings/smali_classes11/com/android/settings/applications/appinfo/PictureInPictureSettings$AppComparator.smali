.class Lcom/android/settings/applications/appinfo/PictureInPictureSettings$AppComparator;
.super Ljava/lang/Object;
.source "PictureInPictureSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appinfo/PictureInPictureSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/util/Pair<",
        "Landroid/content/pm/ApplicationInfo;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/PictureInPictureSettings$AppComparator;->mCollator:Ljava/text/Collator;

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/PictureInPictureSettings$AppComparator;->mPm:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public final compare(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Pair<",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/PictureInPictureSettings$AppComparator;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    :cond_0
    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/PictureInPictureSettings$AppComparator;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/PictureInPictureSettings$AppComparator;->mCollator:Ljava/text/Collator;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    return v2

    :cond_2
    iget-object v3, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v3, v4

    return v3
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/util/Pair;

    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/appinfo/PictureInPictureSettings$AppComparator;->compare(Landroid/util/Pair;Landroid/util/Pair;)I

    move-result p1

    return p1
.end method
