.class public Landroid/widget/AppSecurityPermissions;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;,
        Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;,
        Landroid/widget/AppSecurityPermissions$PermissionItemView;,
        Landroid/widget/AppSecurityPermissions$MyPermissionInfo;,
        Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppSecurityPermissions"

.field public static final WHICH_ALL:I = 0xffff

.field public static final WHICH_NEW:I = 0x4

.field private static final localLOGV:Z = false


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mNewPermPrefix:Ljava/lang/CharSequence;

.field private mPackageName:Ljava/lang/String;

.field private final mPermComparator:Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;

.field private final mPermGroupComparator:Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;

.field private final mPermGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPermGroupsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPermsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    new-instance v0, Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;-><init>(Landroid/widget/AppSecurityPermissions$1;)V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupComparator:Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;

    new-instance v0, Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;

    invoke-direct {v0}, Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mPermComparator:Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    iput-object p1, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    const v1, 0x1040547

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mNewPermPrefix:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 6

    invoke-direct {p0, p1}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/AppSecurityPermissions;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v4, 0x1000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    invoke-direct {p0, p2, v0, v1}, Landroid/widget/AppSecurityPermissions;->extractPerms(Landroid/content/pm/PackageInfo;Ljava/util/Set;Landroid/content/pm/PackageInfo;)V

    :cond_1
    iget-object v2, p2, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    if-eqz v2, :cond_2

    :try_start_1
    iget-object v2, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p2, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getUidForSharedUser(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2, v0}, Landroid/widget/AppSecurityPermissions;->getAllUsedPermissions(ILjava/util/Set;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "AppSecurityPermissions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t retrieve shared user id for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    iget-object v2, p0, Landroid/widget/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Landroid/widget/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    invoke-direct {p0, v2}, Landroid/widget/AppSecurityPermissions;->setPermissions(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/widget/AppSecurityPermissions;->mPackageName:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :try_start_0
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    const/16 v2, 0x1000

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v2, v0}, Landroid/widget/AppSecurityPermissions;->getAllUsedPermissions(ILjava/util/Set;)V

    :cond_0
    iget-object v2, p0, Landroid/widget/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Landroid/widget/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    invoke-direct {p0, v2}, Landroid/widget/AppSecurityPermissions;->setPermissions(Ljava/util/List;)V

    return-void

    :catch_0
    move-exception v1

    const-string v2, "AppSecurityPermissions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t retrieve permissions for package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private addPermToList(Ljava/util/List;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ")V"
        }
    .end annotation

    iget-object v0, p2, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    const v1, 0x469c4000    # 20000.0f

    const/4 v2, 0x5

    invoke-virtual {p2, v0, v1, v2}, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p2, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mLabel:Ljava/lang/CharSequence;

    :cond_0
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mPermComparator:Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;

    invoke-static {p1, p2, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-gez v0, :cond_1

    neg-int v1, v0

    add-int/lit8 v0, v1, -0x1

    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private displayPermissions(Ljava/util/List;Landroid/widget/LinearLayout;IZ)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;",
            ">;",
            "Landroid/widget/LinearLayout;",
            "IZ)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p3

    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, v6, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v8, v1

    const/4 v9, 0x0

    move v0, v9

    :goto_0
    move v10, v0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_6

    move-object/from16 v11, p1

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    invoke-direct {v6, v12, v7}, Landroid/widget/AppSecurityPermissions;->getPermissionList(Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;I)Ljava/util/List;

    move-result-object v13

    move v0, v9

    :goto_1
    move v14, v0

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    if-ge v14, v0, :cond_5

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    const/16 v16, 0x1

    if-nez v14, :cond_0

    move/from16 v3, v16

    goto :goto_2

    :cond_0
    nop

    move v3, v9

    :goto_2
    const/4 v0, 0x4

    if-eq v7, v0, :cond_1

    iget-object v0, v6, Landroid/widget/AppSecurityPermissions;->mNewPermPrefix:Ljava/lang/CharSequence;

    :goto_3
    move-object v4, v0

    goto :goto_4

    :cond_1
    const/4 v0, 0x0

    goto :goto_3

    :goto_4
    move-object v0, v6

    move-object v1, v12

    move-object v2, v15

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/AppSecurityPermissions;->getPermissionItemView(Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Z)Landroid/widget/AppSecurityPermissions$PermissionItemView;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-nez v14, :cond_2

    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_2
    iget-object v2, v12, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mAllPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v14, v2, :cond_3

    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_4

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_4
    move-object/from16 v2, p2

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v14, 0x1

    goto :goto_1

    :cond_5
    move-object/from16 v2, p2

    add-int/lit8 v0, v10, 0x1

    goto :goto_0

    :cond_6
    move-object/from16 v11, p1

    move-object/from16 v2, p2

    return-void
.end method

.method private extractPerms(Landroid/content/pm/PackageInfo;Ljava/util/Set;Landroid/content/pm/PackageInfo;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/util/Set<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;",
            "Landroid/content/pm/PackageInfo;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    if-eqz v4, :cond_d

    array-length v0, v4

    if-nez v0, :cond_0

    goto/16 :goto_9

    :cond_0
    const/4 v6, 0x0

    move v0, v6

    :goto_0
    move v7, v0

    array-length v0, v4

    if-ge v7, v0, :cond_c

    aget-object v0, v4, v7

    move-object v8, v0

    :try_start_0
    iget-object v0, v1, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v8, v6}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    if-nez v0, :cond_1

    nop

    :goto_1
    move-object/from16 v15, p2

    goto/16 :goto_8

    :cond_1
    const/4 v9, -0x1

    if-eqz v3, :cond_3

    iget-object v10, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v10, :cond_3

    move v10, v6

    :goto_2
    iget-object v11, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v11, v11

    if-ge v10, v11, :cond_3

    iget-object v11, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v11, v11, v10

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    move v9, v10

    goto :goto_3

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-ltz v9, :cond_4

    iget-object v10, v3, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v10, v10, v9

    goto :goto_4

    :cond_4
    move v10, v6

    :goto_4
    aget v11, v5, v7

    invoke-direct {v1, v0, v11, v10}, Landroid/widget/AppSecurityPermissions;->isDisplayablePermission(Landroid/content/pm/PermissionInfo;II)Z

    move-result v11

    if-nez v11, :cond_5

    goto :goto_1

    :cond_5
    iget-object v11, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move-object v12, v11

    if-nez v12, :cond_6

    iget-object v13, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    move-object v12, v13

    iput-object v12, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    :cond_6
    iget-object v13, v1, Landroid/widget/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    invoke-interface {v13, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    if-nez v13, :cond_a

    const/4 v14, 0x0

    if-eqz v11, :cond_7

    iget-object v15, v1, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v15, v11, v6}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v15

    move-object v14, v15

    :cond_7
    if-eqz v14, :cond_8

    new-instance v15, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    invoke-direct {v15, v14}, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    move-object v13, v15

    goto :goto_5

    :cond_8
    iget-object v15, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v15, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    iget-object v15, v1, Landroid/widget/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    iget-object v6, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-interface {v15, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    if-nez v6, :cond_9

    new-instance v13, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    invoke-direct {v13, v0}, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    move-object v6, v13

    :cond_9
    new-instance v13, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    invoke-direct {v13, v0}, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    move-object v6, v13

    :goto_5
    iget-object v6, v1, Landroid/widget/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    iget-object v15, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-interface {v6, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    if-eqz v3, :cond_b

    and-int/lit8 v6, v10, 0x2

    if-nez v6, :cond_b

    const/4 v6, 0x1

    goto :goto_6

    :cond_b
    const/4 v6, 0x0

    :goto_6
    new-instance v14, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    invoke-direct {v14, v0}, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    aget v15, v5, v7

    iput v15, v14, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mNewReqFlags:I

    iput v10, v14, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mExistingReqFlags:I

    iput-boolean v6, v14, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mNew:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v15, p2

    :try_start_1
    invoke-interface {v15, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object/from16 v15, p2

    :goto_7
    const-string v6, "AppSecurityPermissions"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignoring unknown permission:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    add-int/lit8 v0, v7, 0x1

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_c
    move-object/from16 v15, p2

    return-void

    :cond_d
    :goto_9
    move-object/from16 v15, p2

    return-void
.end method

.method private getAllUsedPermissions(ILjava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-direct {p0, v3, p2}, Landroid/widget/AppSecurityPermissions;->getPermissionsForPackage(Ljava/lang/String;Ljava/util/Set;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public static getPermissionItemView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;
    .locals 8

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    if-eqz p3, :cond_0

    const v1, 0x108030f

    goto :goto_0

    :cond_0
    const v1, 0x10804ed

    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Landroid/widget/AppSecurityPermissions;->getPermissionItemViewOld(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private static getPermissionItemView(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Ljava/lang/String;Z)Landroid/widget/AppSecurityPermissions$PermissionItemView;
    .locals 8

    nop

    iget v0, p3, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const v0, 0x1090038

    goto :goto_0

    :cond_0
    const v0, 0x1090037

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AppSecurityPermissions$PermissionItemView;

    move-object v1, v0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v1 .. v7}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->setPermission(Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Ljava/lang/String;Z)V

    return-object v0
.end method

.method private getPermissionItemView(Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Z)Landroid/widget/AppSecurityPermissions$PermissionItemView;
    .locals 8

    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Landroid/widget/AppSecurityPermissions;->mPackageName:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Landroid/widget/AppSecurityPermissions;->getPermissionItemView(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Ljava/lang/String;Z)Landroid/widget/AppSecurityPermissions$PermissionItemView;

    move-result-object v0

    return-object v0
.end method

.method private static getPermissionItemViewOld(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 5

    const v0, 0x1090039

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020372

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x1020374

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x102036e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, p5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-object v0
.end method

.method private getPermissionList(Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;",
            "I)",
            "Ljava/util/List<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p1, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mNewPermissions:Ljava/util/ArrayList;

    return-object v0

    :cond_0
    iget-object v0, p1, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mAllPermissions:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getPermissionsForPackage(Ljava/lang/String;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    const/16 v1, 0x1000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-direct {p0, v0, p2, v0}, Landroid/widget/AppSecurityPermissions;->extractPerms(Landroid/content/pm/PackageInfo;Ljava/util/Set;Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AppSecurityPermissions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t retrieve permissions for package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private getPermissionsView(IZ)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x109003a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x1020375

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x1020333

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    invoke-direct {p0, v3, v1, p1, p2}, Landroid/widget/AppSecurityPermissions;->displayPermissions(Ljava/util/List;Landroid/widget/LinearLayout;IZ)V

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-gtz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-object v0
.end method

.method private isDisplayablePermission(Landroid/content/pm/PermissionInfo;II)Z
    .locals 9

    iget v0, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    return v1

    :cond_1
    if-eq v0, v2, :cond_3

    iget v4, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v4, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v4, v2

    :goto_2
    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_4

    move v5, v2

    goto :goto_3

    :cond_4
    move v5, v1

    :goto_3
    iget v6, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_5

    move v6, v2

    goto :goto_4

    :cond_5
    move v6, v1

    :goto_4
    and-int/lit8 v7, p3, 0x2

    if-eqz v7, :cond_6

    move v7, v2

    goto :goto_5

    :cond_6
    move v7, v1

    :goto_5
    and-int/lit8 v8, p2, 0x2

    if-eqz v8, :cond_7

    move v8, v2

    goto :goto_6

    :cond_7
    move v8, v1

    :goto_6
    if-eqz v4, :cond_9

    if-nez v5, :cond_8

    if-nez v7, :cond_8

    if-eqz v8, :cond_9

    :cond_8
    return v2

    :cond_9
    if-eqz v6, :cond_a

    if-eqz v7, :cond_a

    return v2

    :cond_a
    return v1
.end method

.method private setPermissions(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x5

    const v1, 0x469c4000    # 20000.0f

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    iget v4, v3, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mNewReqFlags:I

    iget v5, v3, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mExistingReqFlags:I

    invoke-direct {p0, v3, v4, v5}, Landroid/widget/AppSecurityPermissions;->isDisplayablePermission(Landroid/content/pm/PermissionInfo;II)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Landroid/widget/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    iget-object v5, v3, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->group:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    if-eqz v4, :cond_1

    iget-object v5, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v5, v1, v0}, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v3, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mLabel:Ljava/lang/CharSequence;

    iget-object v5, v4, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mAllPermissions:Ljava/util/ArrayList;

    invoke-direct {p0, v5, v3}, Landroid/widget/AppSecurityPermissions;->addPermToList(Ljava/util/List;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;)V

    iget-boolean v5, v3, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mNew:Z

    if-eqz v5, :cond_1

    iget-object v5, v4, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mNewPermissions:Ljava/util/ArrayList;

    invoke-direct {p0, v5, v3}, Landroid/widget/AppSecurityPermissions;->addPermToList(Ljava/util/List;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;)V

    :cond_1
    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/widget/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    iget v4, v3, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->labelRes:I

    if-nez v4, :cond_4

    iget-object v4, v3, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    :try_start_0
    iget-object v4, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, v3, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v5, v1, v0}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v3, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    iget-object v5, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v5, v1, v0}, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v3, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v4, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4, v1, v0}, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;

    :goto_3
    iget-object v4, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupComparator:Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public getPermissionCount()I
    .locals 1

    const v0, 0xffff

    invoke-virtual {p0, v0}, Landroid/widget/AppSecurityPermissions;->getPermissionCount(I)I

    move-result v0

    return v0
.end method

.method public getPermissionCount(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    invoke-direct {p0, v2, p1}, Landroid/widget/AppSecurityPermissions;->getPermissionList(Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getPermissionsView()Landroid/view/View;
    .locals 2

    const v0, 0xffff

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/AppSecurityPermissions;->getPermissionsView(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionsView(I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AppSecurityPermissions;->getPermissionsView(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionsViewWithRevokeButtons()Landroid/view/View;
    .locals 2

    const v0, 0xffff

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/widget/AppSecurityPermissions;->getPermissionsView(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
