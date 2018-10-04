.class Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;
.super Ljava/lang/Object;
.source "InputMethodSubtypeSwitchingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputMethodAndSubtypeList"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

.field private final mSortedImmis:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSystemLocaleStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList$1;

    invoke-direct {v1, p0}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList$1;-><init>(Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;)V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mSortedImmis:Ljava/util/TreeMap;

    iput-object p1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    iput-object v1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mSystemLocaleStr:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method


# virtual methods
.method public getSortedInputMethodAndSubtypeList(ZZ)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v3, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getExplicitlyOrImplicitlyEnabledInputMethodsAndSubtypeListLocked(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v19, v2

    goto/16 :goto_9

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    move/from16 v4, p1

    :goto_0
    iget-object v5, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mSortedImmis:Ljava/util/TreeMap;

    invoke-virtual {v5}, Ljava/util/TreeMap;->clear()V

    iget-object v5, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mSortedImmis:Ljava/util/TreeMap;

    invoke-virtual {v5, v2}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    iget-object v5, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mSortedImmis:Ljava/util/TreeMap;

    invoke-virtual {v5}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Ljava/util/List;

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    move-object v15, v7

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v7, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v7}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual {v15}, Ljava/util/HashSet;->size()I

    move-result v7

    if-lez v7, :cond_9

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v13

    const/4 v7, 0x0

    :goto_3
    move v12, v7

    if-ge v12, v13, :cond_8

    invoke-virtual {v6, v12}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-nez v4, :cond_5

    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_4

    :cond_4
    move-object/from16 v19, v2

    move/from16 v21, v12

    move/from16 v17, v13

    goto :goto_7

    :cond_5
    :goto_4
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x0

    :goto_5
    move-object v9, v7

    goto :goto_6

    :cond_6
    iget-object v7, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v11, v7, v8, v9}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_5

    :goto_6
    new-instance v8, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v17

    iget-object v7, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mSystemLocaleStr:Ljava/lang/String;

    move-object/from16 v18, v7

    move-object v7, v8

    move-object/from16 v19, v2

    move-object v2, v8

    move-object/from16 v8, v16

    move-object v3, v10

    move-object v10, v6

    move-object/from16 v20, v11

    move v11, v12

    move/from16 v21, v12

    move-object/from16 v12, v17

    move/from16 v17, v13

    move-object/from16 v13, v18

    invoke-direct/range {v7 .. v13}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/inputmethod/InputMethodInfo;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_7
    move-object/from16 v19, v2

    move/from16 v21, v12

    move/from16 v17, v13

    :goto_7
    add-int/lit8 v7, v21, 0x1

    move/from16 v13, v17

    move-object/from16 v2, v19

    goto :goto_3

    :cond_8
    move-object/from16 v19, v2

    goto :goto_8

    :cond_9
    move-object/from16 v19, v2

    new-instance v2, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    const/4 v9, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    iget-object v13, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mSystemLocaleStr:Ljava/lang/String;

    move-object v7, v2

    move-object/from16 v8, v16

    move-object v10, v6

    invoke-direct/range {v7 .. v13}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/inputmethod/InputMethodInfo;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    nop

    move-object/from16 v2, v19

    goto/16 :goto_1

    :cond_a
    move-object/from16 v19, v2

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v1

    :cond_b
    move-object/from16 v19, v2

    :goto_9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method
