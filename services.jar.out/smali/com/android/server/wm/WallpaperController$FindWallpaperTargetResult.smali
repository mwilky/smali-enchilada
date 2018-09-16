.class final Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;
.super Ljava/lang/Object;
.source "WallpaperController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WallpaperController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FindWallpaperTargetResult"
.end annotation


# instance fields
.field resetTopWallpaper:Z

.field topWallpaper:Lcom/android/server/wm/WindowState;

.field useTopWallpaperAsTarget:Z

.field wallpaperTarget:Lcom/android/server/wm/WindowState;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 805
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    .line 806
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    .line 807
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 808
    iput-boolean v1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->resetTopWallpaper:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WallpaperController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/WallpaperController$1;

    .line 804
    invoke-direct {p0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;-><init>()V

    return-void
.end method


# virtual methods
.method reset()V
    .locals 1

    .line 823
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    .line 824
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 825
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    .line 826
    iput-boolean v0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->resetTopWallpaper:Z

    .line 827
    return-void
.end method

.method setTopWallpaper(Lcom/android/server/wm/WindowState;)V
    .locals 0
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 811
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    .line 812
    return-void
.end method

.method setUseTopWallpaperAsTarget(Z)V
    .locals 0
    .param p1, "topWallpaperAsTarget"    # Z

    .line 819
    iput-boolean p1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    .line 820
    return-void
.end method

.method setWallpaperTarget(Lcom/android/server/wm/WindowState;)V
    .locals 0
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 815
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 816
    return-void
.end method
