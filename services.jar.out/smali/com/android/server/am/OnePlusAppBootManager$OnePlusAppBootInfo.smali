.class public Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
.super Ljava/lang/Object;
.source "OnePlusAppBootManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusAppBootManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnePlusAppBootInfo"
.end annotation


# static fields
.field public static final BOOT_FLAG_GO:I = 0x1

.field public static final BOOT_FLAG_IGNORE:I = 0x0

.field public static final PKG_ACTION_BLACKLIST:I = 0x2

.field public static final PKG_ACTION_DEFAULT:I = 0x0

.field public static final PKG_ACTION_INVALID:I = -0x1

.field public static final PKG_ACTION_WHITELIST:I = 0x1

.field public static final PKG_FLAG_BLACKLIST_APP:I = 0x10

.field public static final PKG_FLAG_BLACKLIST_COMPONENT:I = 0x1000

.field public static final PKG_FLAG_DATA_APP:I = 0x4

.field public static final PKG_FLAG_DEFAULT_APP:I = 0x1

.field public static final PKG_FLAG_FORCE_UPDATE_ACTION:I = 0x4000

.field public static final PKG_FLAG_HUGE_POWER:I = 0x8000

.field public static final PKG_FLAG_SPECIAL_ACCESSIBILITY_APP:I = 0x400

.field public static final PKG_FLAG_SPECIAL_APP:I = 0x20

.field public static final PKG_FLAG_SPECIAL_DEPENDENCY_APP:I = 0x40

.field public static final PKG_FLAG_SPECIAL_HIDE_LAUNCHER_APP:I = 0x200

.field public static final PKG_FLAG_SPECIAL_INPUT_METHOD_APP:I = 0x100

.field public static final PKG_FLAG_SPECIAL_LAUNCHER_APP:I = 0x80

.field public static final PKG_FLAG_SPECIAL_TTS_APP:I = 0x2000

.field public static final PKG_FLAG_SPECIAL_WIDGET_APP:I = 0x800

.field public static final PKG_FLAG_SYS_APP:I = 0x2

.field public static final PKG_FLAG_WHITELIST_APP:I = 0x8


# instance fields
.field private volatile mAction:I

.field private mBlackListEnable:Z

.field private volatile mBootFlag:I

.field private mCalleePkgSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCallerPkgSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastCallingServiceTag:Ljava/lang/String;

.field private mLastCallingServiceTime:J

.field mParserPkg:Landroid/content/pm/PackageParser$Package;

.field private volatile mPkgFlag:I

.field private mPkgName:Ljava/lang/String;

.field private mSetted:I

.field private mUid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 1810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1762
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mParserPkg:Landroid/content/pm/PackageParser$Package;

    .line 1763
    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgName:Ljava/lang/String;

    .line 1764
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mUid:I

    .line 1770
    iput v1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mAction:I

    .line 1796
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    .line 1797
    iput v1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mSetted:I

    .line 1801
    iput v1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBootFlag:I

    .line 1802
    iput-boolean v2, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBlackListEnable:Z

    .line 1804
    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mLastCallingServiceTag:Ljava/lang/String;

    .line 1805
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mLastCallingServiceTime:J

    .line 1807
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mCallerPkgSet:Ljava/util/HashSet;

    .line 1808
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mCalleePkgSet:Ljava/util/HashSet;

    .line 1811
    iput-object p1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgName:Ljava/lang/String;

    .line 1812
    invoke-static {}, Lcom/android/server/am/OnePlusAppBootManager;->access$000()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1813
    invoke-static {}, Lcom/android/server/am/OnePlusAppBootManager;->access$000()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;

    .line 1814
    .local v0, "ppi":Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;
    if-eqz v0, :cond_1

    .line 1815
    iget v3, v0, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mAction:I

    iput v3, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mAction:I

    .line 1816
    iget v3, v0, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mFlag:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_0

    .line 1817
    iput-boolean v2, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBlackListEnable:Z

    goto :goto_0

    .line 1819
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBlackListEnable:Z

    .line 1823
    .end local v0    # "ppi":Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .line 1761
    iget v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .param p1, "x1"    # I

    .line 1761
    iput p1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    return p1
.end method

.method static synthetic access$1402(Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .param p1, "x1"    # I

    .line 1761
    iput p1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBootFlag:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .line 1761
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addCalleePackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 2057
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2058
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mCalleePkgSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2060
    :cond_0
    return-void
.end method

.method public addCallerPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 2051
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2052
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mCallerPkgSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2054
    :cond_0
    return-void
.end method

.method public canChangeRuleByUsage()Z
    .locals 2

    .line 1841
    iget v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mSetted:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1842
    return v1

    .line 1845
    :cond_0
    iget v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1849
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 1847
    :cond_2
    :goto_0
    return v1
.end method

.method public getAction()I
    .locals 1

    .line 1995
    iget v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mAction:I

    return v0
.end method

.method public getBlackListEnableFlag()Z
    .locals 1

    .line 2026
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBlackListEnable:Z

    return v0
.end method

.method public getBootFlag()I
    .locals 1

    .line 2018
    iget v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBootFlag:I

    return v0
.end method

.method public getCalleePackageSet()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2067
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mCalleePkgSet:Ljava/util/HashSet;

    return-object v0
.end method

.method public getCalleePackageSetString()Ljava/lang/String;
    .locals 1

    .line 2075
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mCalleePkgSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallerPackageSet()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2063
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mCallerPkgSet:Ljava/util/HashSet;

    return-object v0
.end method

.method public getCallerPackageSetString()Ljava/lang/String;
    .locals 1

    .line 2071
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mCallerPkgSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPkgFlag()I
    .locals 1

    .line 2002
    iget v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    return v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .line 1981
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getSetted()I
    .locals 1

    .line 2010
    iget v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mSetted:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1988
    iget v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mUid:I

    return v0
.end method

.method public setAction(I)V
    .locals 0
    .param p1, "action"    # I

    .line 1992
    iput p1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mAction:I

    .line 1993
    return-void
.end method

.method public setBlackListEnableFlag(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 2022
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBlackListEnable:Z

    .line 2023
    return-void
.end method

.method public setBootFlag(I)V
    .locals 0
    .param p1, "bootFlag"    # I

    .line 2014
    iput p1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBootFlag:I

    .line 2015
    return-void
.end method

.method public setDependencyPackageFlag()V
    .locals 1

    .line 1826
    iget v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    or-int/lit8 v0, v0, 0x40

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    .line 1829
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBootFlag:I

    .line 1830
    return-void
.end method

.method public setPPPackage(Landroid/content/pm/PackageParser$Package;)V
    .locals 11
    .param p1, "parserPkg"    # Landroid/content/pm/PackageParser$Package;

    .line 1852
    iput-object p1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mParserPkg:Landroid/content/pm/PackageParser$Package;

    .line 1853
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_19

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgName:Ljava/lang/String;

    if-eqz v2, :cond_19

    const-string v2, "android"

    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgName:Ljava/lang/String;

    .line 1854
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_d

    .line 1861
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mParserPkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v2, :cond_17

    .line 1862
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mParserPkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_11

    .line 1863
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mParserPkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mUid:I

    .line 1864
    const/4 v2, 0x0

    .line 1865
    .local v2, "isSysApp":Z
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mParserPkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x81

    if-eqz v3, :cond_1

    .line 1867
    const/4 v2, 0x1

    .line 1868
    iget v3, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    or-int/2addr v3, v0

    iput v3, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    .line 1869
    iget v3, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    .line 1870
    iput v1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBootFlag:I

    .line 1871
    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    goto :goto_0

    .line 1873
    :cond_1
    iget v3, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    .line 1874
    iget v3, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    .line 1875
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBootFlag:I

    .line 1878
    :goto_0
    const/4 v3, 0x0

    .line 1879
    .local v3, "bingoLauncher":Z
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Activity;

    .line 1880
    .local v5, "ac":Landroid/content/pm/PackageParser$Activity;
    if-eqz v3, :cond_2

    .line 1881
    goto :goto_4

    .line 1883
    :cond_2
    if-eqz v5, :cond_4

    .line 1884
    iget-object v6, v5, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    .line 1885
    .local v6, "aiis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 1886
    .local v8, "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    if-eqz v8, :cond_3

    .line 1887
    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1888
    const/4 v3, 0x1

    .line 1889
    goto :goto_3

    .line 1892
    .end local v8    # "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_3
    goto :goto_2

    .line 1894
    .end local v5    # "ac":Landroid/content/pm/PackageParser$Activity;
    .end local v6    # "aiis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    :cond_4
    :goto_3
    goto :goto_1

    .line 1895
    :cond_5
    :goto_4
    if-nez v3, :cond_7

    .line 1896
    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v4, :cond_6

    .line 1897
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# setPPPackage # parserPkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " # hide-laucher app"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1900
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v4

    or-int/lit8 v4, v4, 0x20

    invoke-virtual {p0, v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setPkgFlag(I)V

    .line 1903
    :cond_7
    const/4 v4, 0x0

    .line 1904
    .local v4, "bingoTTSService":Z
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Service;

    .line 1905
    .local v6, "ac":Landroid/content/pm/PackageParser$Service;
    if-eqz v4, :cond_8

    .line 1906
    goto :goto_8

    .line 1908
    :cond_8
    if-eqz v6, :cond_a

    .line 1909
    iget-object v7, v6, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    .line 1910
    .local v7, "aiis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ServiceIntentInfo;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    .line 1911
    .local v9, "aii":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    if-eqz v9, :cond_9

    .line 1912
    const-string v10, "android.intent.action.TTS_SERVICE"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageParser$ServiceIntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1913
    const/4 v4, 0x1

    .line 1914
    goto :goto_7

    .line 1917
    .end local v9    # "aii":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    :cond_9
    goto :goto_6

    .line 1919
    .end local v6    # "ac":Landroid/content/pm/PackageParser$Service;
    .end local v7    # "aiis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ServiceIntentInfo;>;"
    :cond_a
    :goto_7
    goto :goto_5

    .line 1921
    :cond_b
    :goto_8
    if-ne v4, v1, :cond_d

    .line 1922
    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v5, :cond_c

    .line 1923
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# setPPPackage # parserPkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " # tts app"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1926
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v5

    or-int/lit8 v5, v5, 0x20

    invoke-virtual {p0, v5}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setPkgFlag(I)V

    .line 1929
    :cond_d
    if-nez v2, :cond_11

    .line 1930
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Service;

    .line 1931
    .restart local v6    # "ac":Landroid/content/pm/PackageParser$Service;
    if-eqz v6, :cond_10

    .line 1932
    iget-object v7, v6, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    .line 1933
    .restart local v7    # "aiis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ServiceIntentInfo;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    .line 1934
    .restart local v9    # "aii":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    if-eqz v9, :cond_f

    const-string v10, "android.content.SyncAdapter"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageParser$ServiceIntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 1935
    iget-object v10, v9, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    if-eqz v10, :cond_f

    iget-object v10, v9, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    invoke-virtual {v10}, Landroid/content/pm/PackageParser$Service;->getComponentName()Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_f

    .line 1936
    sget-boolean v8, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v8, :cond_e

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "# setPPPackage # SyncAdapter: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v9, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    invoke-virtual {v10}, Landroid/content/pm/PackageParser$Service;->getComponentName()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1937
    :cond_e
    invoke-static {}, Lcom/android/server/am/OnePlusAppBootManager;->access$100()Ljava/util/ArrayList;

    move-result-object v8

    iget-object v10, v9, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    invoke-virtual {v10}, Landroid/content/pm/PackageParser$Service;->getComponentName()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1938
    goto :goto_b

    .line 1941
    .end local v9    # "aii":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    :cond_f
    goto :goto_a

    .line 1943
    .end local v6    # "ac":Landroid/content/pm/PackageParser$Service;
    .end local v7    # "aiis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ServiceIntentInfo;>;"
    :cond_10
    :goto_b
    goto :goto_9

    .line 1947
    .end local v2    # "isSysApp":Z
    .end local v3    # "bingoLauncher":Z
    .end local v4    # "bingoTTSService":Z
    :cond_11
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v3, "clock"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v3, "alarm"

    .line 1948
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v3, "calendar"

    .line 1949
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "plan"

    .line 1950
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "mail"

    .line 1951
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "note"

    .line 1952
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "test"

    .line 1953
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v3, "cts"

    .line 1954
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1955
    :cond_12
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v2, :cond_13

    .line 1956
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# setPPPackage # parserPkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " # alarm app"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1960
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v2

    or-int/lit8 v2, v2, 0x20

    invoke-virtual {p0, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setPkgFlag(I)V

    .line 1964
    :cond_14
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->access$200(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1965
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v2

    or-int/lit8 v2, v2, 0x20

    invoke-virtual {p0, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setPkgFlag(I)V

    .line 1968
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v2

    if-nez v2, :cond_17

    .line 1969
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_16

    .line 1970
    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 1971
    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    goto :goto_c

    .line 1973
    :cond_16
    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 1977
    :cond_17
    :goto_c
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# setPPPackage # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1978
    :cond_18
    return-void

    .line 1855
    :cond_19
    :goto_d
    iget v2, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    .line 1856
    iget v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    .line 1857
    iput v1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBootFlag:I

    .line 1858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setPPPackage # abi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1859
    return-void
.end method

.method public setPkgFlag(I)V
    .locals 0
    .param p1, "pkgFlag"    # I

    .line 1998
    iput p1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    .line 1999
    return-void
.end method

.method public setSetted(I)V
    .locals 0
    .param p1, "sett"    # I

    .line 2006
    iput p1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mSetted:I

    .line 2007
    return-void
.end method

.method public setUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 1984
    iput p1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mUid:I

    .line 1985
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnePlusAppBootInfo{mPkgName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPkgFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSetted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mSetted:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBootFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBootFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBlackListEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBlackListEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2087
    .local v0, "ret":Ljava/lang/String;
    return-object v0
.end method

.method public updateLastCallingServiceBootPolicy(Ljava/lang/String;)Z
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;

    .line 2030
    iget v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBootFlag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2031
    return v1

    .line 2034
    :cond_0
    const/4 v0, 0x0

    .line 2035
    .local v0, "ret":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2037
    .local v1, "curTime":J
    iget-wide v3, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mLastCallingServiceTime:J

    sub-long v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v5, 0xbb8

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 2038
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mLastCallingServiceTag:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mLastCallingServiceTag:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2040
    const/4 v0, 0x1

    .line 2044
    :cond_1
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# updateLastCallingServiceBootPolicy # ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2045
    :cond_2
    iput-wide v1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mLastCallingServiceTime:J

    .line 2046
    iput-object p1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mLastCallingServiceTag:Ljava/lang/String;

    .line 2047
    return v0
.end method
