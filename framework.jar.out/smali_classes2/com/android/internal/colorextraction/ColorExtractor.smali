.class public Lcom/android/internal/colorextraction/ColorExtractor;
.super Ljava/lang/Object;
.source "ColorExtractor.java"

# interfaces
.implements Landroid/app/WallpaperManager$OnColorsChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;,
        Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ColorExtractor"

.field public static final TYPE_DARK:I = 0x1

.field public static final TYPE_EXTRA_DARK:I = 0x2

.field public static final TYPE_NORMAL:I

.field private static final sGradientTypes:[I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mExtractionType:Lcom/android/internal/colorextraction/types/ExtractionType;

.field protected final mGradientColors:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;",
            ">;"
        }
    .end annotation
.end field

.field protected mLockColors:Landroid/app/WallpaperColors;

.field private final mOnColorsChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mSystemColors:Landroid/app/WallpaperColors;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/colorextraction/ColorExtractor;->sGradientTypes:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    new-instance v0, Lcom/android/internal/colorextraction/types/Tonal;

    invoke-direct {v0, p1}, Lcom/android/internal/colorextraction/types/Tonal;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/colorextraction/ColorExtractor;-><init>(Landroid/content/Context;Lcom/android/internal/colorextraction/types/ExtractionType;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/colorextraction/types/ExtractionType;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extractionType"    # Lcom/android/internal/colorextraction/types/ExtractionType;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mExtractionType:Lcom/android/internal/colorextraction/types/ExtractionType;

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    .line 67
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget v5, v1, v4

    .line 68
    .local v5, "which":I
    sget-object v6, Lcom/android/internal/colorextraction/ColorExtractor;->sGradientTypes:[I

    array-length v6, v6

    new-array v6, v6, [Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 69
    .local v6, "colors":[Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    iget-object v7, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    invoke-virtual {v7, v5, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 70
    sget-object v7, Lcom/android/internal/colorextraction/ColorExtractor;->sGradientTypes:[I

    array-length v8, v7

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_0

    aget v10, v7, v9

    .line 71
    .local v10, "type":I
    new-instance v11, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-direct {v11}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;-><init>()V

    aput-object v11, v6, v10

    .line 70
    .end local v10    # "type":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 67
    .end local v5    # "which":I
    .end local v6    # "colors":[Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 75
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mOnColorsChangedListeners:Ljava/util/ArrayList;

    .line 76
    iget-object v1, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 77
    .local v1, "systemColors":[Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    iget-object v4, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 79
    .local v4, "lockColors":[Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    iget-object v5, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mContext:Landroid/content/Context;

    const-class v6, Landroid/app/WallpaperManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/WallpaperManager;

    .line 80
    .local v5, "wallpaperManager":Landroid/app/WallpaperManager;
    if-nez v5, :cond_2

    .line 81
    const-string v6, "ColorExtractor"

    const-string v7, "Can\'t listen to color changes!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 83
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v5, p0, v6}, Landroid/app/WallpaperManager;->addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;)V

    .line 86
    const-string v6, "ColorExtractor#getWallpaperColors"

    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v5, v2}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mSystemColors:Landroid/app/WallpaperColors;

    .line 88
    invoke-virtual {v5, v0}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mLockColors:Landroid/app/WallpaperColors;

    .line 89
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 93
    :goto_2
    iget-object v6, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mSystemColors:Landroid/app/WallpaperColors;

    aget-object v7, v1, v3

    aget-object v8, v1, v2

    aget-object v9, v1, v0

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/android/internal/colorextraction/ColorExtractor;->extractInto(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 97
    iget-object v6, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mLockColors:Landroid/app/WallpaperColors;

    aget-object v3, v4, v3

    aget-object v2, v4, v2

    aget-object v0, v4, v0

    invoke-direct {p0, v6, v3, v2, v0}, Lcom/android/internal/colorextraction/ColorExtractor;->extractInto(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 101
    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1
    .end array-data
.end method

.method private extractInto(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .locals 1
    .param p1, "inWallpaperColors"    # Landroid/app/WallpaperColors;
    .param p2, "outGradientColorsNormal"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .param p3, "outGradientColorsDark"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .param p4, "outGradientColorsExtraDark"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 194
    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mExtractionType:Lcom/android/internal/colorextraction/types/ExtractionType;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/colorextraction/types/ExtractionType;->extractInto(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 196
    return-void
.end method


# virtual methods
.method public addOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;

    .line 206
    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mOnColorsChangedListeners:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/WallpaperManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    .line 200
    .local v0, "wallpaperManager":Landroid/app/WallpaperManager;
    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0, p0}, Landroid/app/WallpaperManager;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;)V

    .line 203
    :cond_0
    return-void
.end method

.method public getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .locals 1
    .param p1, "which"    # I

    .line 111
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(II)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    return-object v0
.end method

.method public getColors(II)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .locals 2
    .param p1, "which"    # I
    .param p2, "type"    # I

    .line 123
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v1, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "type should be TYPE_NORMAL, TYPE_DARK or TYPE_EXTRA_DARK"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_1
    :goto_0
    if-eq p1, v0, :cond_3

    if-ne p1, v1, :cond_2

    goto :goto_1

    .line 128
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "which should be FLAG_SYSTEM or FLAG_NORMAL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    aget-object v0, v0, p2

    return-object v0
.end method

.method public getWallpaperColors(I)Landroid/app/WallpaperColors;
    .locals 3
    .param p1, "which"    # I

    .line 141
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mLockColors:Landroid/app/WallpaperColors;

    return-object v0

    .line 143
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mSystemColors:Landroid/app/WallpaperColors;

    return-object v0

    .line 146
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value for which: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onColorsChanged(Landroid/app/WallpaperColors;I)V
    .locals 8
    .param p1, "colors"    # Landroid/app/WallpaperColors;
    .param p2, "which"    # I

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "changed":Z
    and-int/lit8 v1, p2, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    .line 157
    iput-object p1, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mLockColors:Landroid/app/WallpaperColors;

    .line 158
    iget-object v1, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 159
    .local v1, "lockColors":[Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    aget-object v5, v1, v2

    aget-object v6, v1, v3

    aget-object v7, v1, v4

    invoke-direct {p0, p1, v5, v6, v7}, Lcom/android/internal/colorextraction/ColorExtractor;->extractInto(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 161
    const/4 v0, 0x1

    .line 163
    .end local v1    # "lockColors":[Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    :cond_0
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_1

    .line 164
    iput-object p1, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mSystemColors:Landroid/app/WallpaperColors;

    .line 165
    iget-object v1, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 166
    .local v1, "systemColors":[Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    aget-object v2, v1, v2

    aget-object v3, v1, v3

    aget-object v4, v1, v4

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/internal/colorextraction/ColorExtractor;->extractInto(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 168
    const/4 v0, 0x1

    .line 171
    .end local v1    # "systemColors":[Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    :cond_1
    if-eqz v0, :cond_2

    .line 172
    invoke-virtual {p0, p2}, Lcom/android/internal/colorextraction/ColorExtractor;->triggerColorsChanged(I)V

    .line 174
    :cond_2
    return-void
.end method

.method public removeOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mOnColorsChangedListeners:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 212
    .local v0, "references":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;>;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 213
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 214
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 215
    .local v3, "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 216
    iget-object v4, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mOnColorsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 217
    goto :goto_1

    .line 213
    .end local v3    # "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method protected triggerColorsChanged(I)V
    .locals 6
    .param p1, "which"    # I

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mOnColorsChangedListeners:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 179
    .local v0, "references":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;>;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 180
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 181
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 182
    .local v3, "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;

    .line 183
    .local v4, "listener":Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;
    if-nez v4, :cond_0

    .line 184
    iget-object v5, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mOnColorsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 186
    :cond_0
    invoke-interface {v4, p0, p1}, Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;->onColorsChanged(Lcom/android/internal/colorextraction/ColorExtractor;I)V

    .line 180
    .end local v3    # "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;>;"
    .end local v4    # "listener":Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    .end local v2    # "i":I
    :cond_1
    return-void
.end method
