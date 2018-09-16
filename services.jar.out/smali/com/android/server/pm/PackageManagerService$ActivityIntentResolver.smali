.class final Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ActivityIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$AuthoritiesIterGenerator;,
        Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$SchemesIterGenerator;,
        Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$CategoriesIterGenerator;,
        Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$ActionIterGenerator;,
        Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver<",
        "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivities:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mFlags:I

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .line 13157
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    .line 13723
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    .line 13157
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    return-object v0
.end method

.method private adjustPriority(Ljava/util/List;Landroid/content/pm/PackageParser$ActivityIntentInfo;)V
    .locals 17
    .param p2, "intent"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;",
            "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
            ")V"
        }
    .end annotation

    .local p1, "systemActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Activity;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 13326
    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v3

    if-gtz v3, :cond_0

    .line 13327
    return-void

    .line 13330
    :cond_0
    iget-object v3, v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 13331
    .local v3, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 13333
    .local v4, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v5, v5, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    move v5, v7

    .line 13335
    .local v5, "privilegedApp":Z
    :goto_0
    if-nez v5, :cond_3

    .line 13337
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_FILTERS:Z

    if-eqz v6, :cond_2

    .line 13338
    const-string v6, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Non-privileged app; cap priority to 0; package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " activity: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " origPrio: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13341
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 13338
    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13343
    :cond_2
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 13344
    return-void

    .line 13347
    :cond_3
    if-nez v1, :cond_b

    .line 13349
    invoke-direct {v0, v2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->isProtectedAction(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 13350
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$3400(Lcom/android/server/pm/PackageManagerService;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 13358
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$3500(Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13359
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_FILTERS:Z

    if-eqz v6, :cond_4

    .line 13360
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Protected action; save for later; package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " activity: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " origPrio: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13363
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 13360
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13365
    :cond_4
    return-void

    .line 13367
    :cond_5
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_FILTERS:Z

    if-eqz v6, :cond_6

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    if-nez v6, :cond_6

    .line 13368
    const-string v6, "PackageManager"

    const-string v8, "No setup wizard; All protected intents capped to priority 0"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13371
    :cond_6
    iget-object v6, v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 13372
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_FILTERS:Z

    if-eqz v6, :cond_7

    .line 13373
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found setup wizard; allow priority "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13374
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "; package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " activity: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " priority: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13377
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 13373
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13380
    :cond_7
    return-void

    .line 13382
    :cond_8
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_FILTERS:Z

    if-eqz v6, :cond_9

    .line 13383
    const-string v6, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Protected action; cap priority to 0; package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " activity: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " origPrio: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13386
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 13383
    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13388
    :cond_9
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 13389
    return-void

    .line 13393
    :cond_a
    return-void

    .line 13397
    :cond_b
    nop

    .line 13398
    invoke-direct {v0, v1, v3}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->findMatchingActivity(Ljava/util/List;Landroid/content/pm/ActivityInfo;)Landroid/content/pm/PackageParser$Activity;

    move-result-object v8

    .line 13399
    .local v8, "foundActivity":Landroid/content/pm/PackageParser$Activity;
    if-nez v8, :cond_d

    .line 13401
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_FILTERS:Z

    if-eqz v6, :cond_c

    .line 13402
    const-string v6, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "New activity; cap priority to 0; package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " activity: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v10, v10, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " origPrio: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13405
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 13402
    invoke-static {v6, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13407
    :cond_c
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 13408
    return-void

    .line 13414
    :cond_d
    new-instance v9, Ljava/util/ArrayList;

    iget-object v10, v8, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13416
    .local v9, "intentListCopy":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->findFilters(Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object v10

    .line 13419
    .local v10, "foundFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->actionsIterator()Ljava/util/Iterator;

    move-result-object v11

    .line 13420
    .local v11, "actionsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v11, :cond_f

    .line 13421
    new-instance v12, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$ActionIterGenerator;

    invoke-direct {v12, v0}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$ActionIterGenerator;-><init>(Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;)V

    invoke-direct {v0, v9, v12, v11}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->getIntentListSubset(Ljava/util/List;Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator;Ljava/util/Iterator;)V

    .line 13423
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_f

    .line 13425
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_FILTERS:Z

    if-eqz v6, :cond_e

    .line 13426
    const-string v6, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Mismatched action; cap priority to 0; package: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " activity: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v13, v13, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " origPrio: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13429
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 13426
    invoke-static {v6, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13431
    :cond_e
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 13432
    return-void

    .line 13437
    :cond_f
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->categoriesIterator()Ljava/util/Iterator;

    move-result-object v12

    .line 13438
    .local v12, "categoriesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v12, :cond_11

    .line 13439
    new-instance v13, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$CategoriesIterGenerator;

    invoke-direct {v13, v0}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$CategoriesIterGenerator;-><init>(Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;)V

    invoke-direct {v0, v9, v13, v12}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->getIntentListSubset(Ljava/util/List;Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator;Ljava/util/Iterator;)V

    .line 13441
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_11

    .line 13443
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_FILTERS:Z

    if-eqz v6, :cond_10

    .line 13444
    const-string v6, "PackageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Mismatched category; cap priority to 0; package: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " activity: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v14, v14, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " origPrio: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13447
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 13444
    invoke-static {v6, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13449
    :cond_10
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 13450
    return-void

    .line 13455
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->schemesIterator()Ljava/util/Iterator;

    move-result-object v13

    .line 13456
    .local v13, "schemesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v13, :cond_13

    .line 13457
    new-instance v14, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$SchemesIterGenerator;

    invoke-direct {v14, v0}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$SchemesIterGenerator;-><init>(Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;)V

    invoke-direct {v0, v9, v14, v13}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->getIntentListSubset(Ljava/util/List;Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator;Ljava/util/Iterator;)V

    .line 13459
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_13

    .line 13461
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_FILTERS:Z

    if-eqz v6, :cond_12

    .line 13462
    const-string v6, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Mismatched scheme; cap priority to 0; package: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " activity: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v15, v15, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " origPrio: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13465
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 13462
    invoke-static {v6, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13467
    :cond_12
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 13468
    return-void

    .line 13474
    :cond_13
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v14

    .line 13475
    .local v14, "authoritiesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v14, :cond_15

    .line 13476
    new-instance v15, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$AuthoritiesIterGenerator;

    invoke-direct {v15, v0}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$AuthoritiesIterGenerator;-><init>(Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;)V

    invoke-direct {v0, v9, v15, v14}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->getIntentListSubset(Ljava/util/List;Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator;Ljava/util/Iterator;)V

    .line 13479
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_15

    .line 13481
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_FILTERS:Z

    if-eqz v6, :cond_14

    .line 13482
    const-string v6, "PackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Mismatched authority; cap priority to 0; package: "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " activity: "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v7, v7, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " origPrio: "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13485
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 13482
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13487
    :cond_14
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 13488
    return-void

    .line 13493
    :cond_15
    const/4 v7, 0x0

    .line 13494
    .local v7, "cappedPriority":I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    sub-int/2addr v15, v6

    .local v15, "i":I
    :goto_1
    move v6, v15

    .end local v15    # "i":I
    .local v6, "i":I
    if-ltz v6, :cond_16

    .line 13495
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-virtual {v15}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v15

    invoke-static {v7, v15}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 13494
    add-int/lit8 v15, v6, -0x1

    .end local v6    # "i":I
    .restart local v15    # "i":I
    goto :goto_1

    .line 13497
    .end local v15    # "i":I
    :cond_16
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v6

    if-le v6, v7, :cond_18

    .line 13498
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_FILTERS:Z

    if-eqz v6, :cond_17

    .line 13499
    const-string v6, "PackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Found matching filter(s); cap priority to "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; package: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " activity: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " origPrio: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13503
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13499
    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13505
    :cond_17
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 13506
    return-void

    .line 13509
    :cond_18
    return-void
.end method

.method private findMatchingActivity(Ljava/util/List;Landroid/content/pm/ActivityInfo;)Landroid/content/pm/PackageParser$Activity;
    .locals 4
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;",
            "Landroid/content/pm/ActivityInfo;",
            ")",
            "Landroid/content/pm/PackageParser$Activity;"
        }
    .end annotation

    .line 13205
    .local p1, "activityList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Activity;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    .line 13206
    .local v1, "sysActivity":Landroid/content/pm/PackageParser$Activity;
    iget-object v2, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13207
    return-object v1

    .line 13209
    :cond_0
    iget-object v2, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13210
    return-object v1

    .line 13212
    :cond_1
    iget-object v2, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 13213
    iget-object v2, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13214
    return-object v1

    .line 13216
    :cond_2
    iget-object v2, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 13217
    return-object v1

    .line 13220
    .end local v1    # "sysActivity":Landroid/content/pm/PackageParser$Activity;
    :cond_3
    goto :goto_0

    .line 13221
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private getIntentListSubset(Ljava/util/List;Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator;Ljava/util/Iterator;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator<",
            "TT;>;",
            "Ljava/util/Iterator<",
            "TT;>;)V"
        }
    .end annotation

    .line 13265
    .local p1, "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .local p2, "generator":Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator;, "Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator<TT;>;"
    .local p3, "searchIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13267
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 13268
    goto :goto_4

    .line 13271
    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 13274
    .local v0, "searchAction":Ljava/lang/Object;, "TT;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 13275
    .local v1, "intentIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 13276
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 13277
    .local v2, "intentInfo":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v3, 0x0

    .line 13281
    .local v3, "selectionFound":Z
    invoke-virtual {p2, v2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator;->generate(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Ljava/util/Iterator;

    move-result-object v4

    .line 13282
    .local v4, "intentSelectionIter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :goto_2
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 13283
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 13284
    .local v5, "intentSelection":Ljava/lang/Object;, "TT;"
    if-eqz v5, :cond_1

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 13285
    const/4 v3, 0x1

    .line 13286
    goto :goto_3

    .line 13288
    .end local v5    # "intentSelection":Ljava/lang/Object;, "TT;"
    :cond_1
    goto :goto_2

    .line 13292
    :cond_2
    :goto_3
    if-nez v3, :cond_3

    .line 13293
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 13295
    .end local v2    # "intentInfo":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .end local v3    # "selectionFound":Z
    .end local v4    # "intentSelectionIter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_3
    goto :goto_1

    .line 13296
    .end local v0    # "searchAction":Ljava/lang/Object;, "TT;"
    .end local v1    # "intentIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    :cond_4
    goto :goto_0

    .line 13297
    :cond_5
    :goto_4
    return-void
.end method

.method private isProtectedAction(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Z
    .locals 3
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 13300
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 13301
    .local v0, "actionsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13302
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 13303
    .local v1, "filterAction":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$3300()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13304
    const/4 v2, 0x1

    return v2

    .line 13306
    .end local v1    # "filterAction":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 13307
    :cond_1
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public final addActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V
    .locals 6
    .param p1, "a"    # Landroid/content/pm/PackageParser$Activity;
    .param p2, "type"    # Ljava/lang/String;

    .line 13512
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13513
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_SHOW_INFO:Z

    if-eqz v0, :cond_1

    .line 13514
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13516
    iget-object v2, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v2, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13514
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13517
    :cond_1
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_SHOW_INFO:Z

    if-eqz v0, :cond_2

    .line 13518
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Class="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13519
    :cond_2
    iget-object v0, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 13520
    .local v0, "NI":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v0, :cond_7

    .line 13521
    iget-object v2, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 13522
    .local v2, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const-string v3, "activity"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 13523
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 13524
    invoke-virtual {v3, v4}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    .line 13526
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v3, :cond_3

    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 13527
    .local v4, "systemActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Activity;>;"
    :goto_2
    invoke-direct {p0, v4, v2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->adjustPriority(Ljava/util/List;Landroid/content/pm/PackageParser$ActivityIntentInfo;)V

    .line 13529
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v4    # "systemActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Activity;>;"
    :cond_4
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_SHOW_INFO:Z

    if-eqz v3, :cond_5

    .line 13530
    const-string v3, "PackageManager"

    const-string v4, "    IntentFilter:"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13531
    new-instance v3, Landroid/util/LogPrinter;

    const/4 v4, 0x2

    const-string v5, "PackageManager"

    invoke-direct {v3, v4, v5}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    const-string v4, "      "

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 13533
    :cond_5
    invoke-virtual {v2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->debugCheck()Z

    move-result v3

    if-nez v3, :cond_6

    .line 13534
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==> For Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13536
    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 13520
    .end local v2    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 13538
    .end local v1    # "j":I
    :cond_7
    return-void
.end method

.method protected bridge synthetic allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .locals 0

    .line 13157
    check-cast p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->allowFilterResult(Landroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method protected allowFilterResult(Landroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/util/List;)Z
    .locals 6
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .line 13562
    .local p2, "dest":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 13563
    .local v0, "filterAi":Landroid/content/pm/ActivityInfo;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 13564
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 13565
    .local v3, "destAi":Landroid/content/pm/ActivityInfo;
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-ne v4, v5, :cond_0

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-ne v4, v5, :cond_0

    .line 13567
    const/4 v2, 0x0

    return v2

    .line 13563
    .end local v3    # "destAi":Landroid/content/pm/ActivityInfo;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 13570
    .end local v1    # "i":I
    :cond_1
    return v2
.end method

.method protected bridge synthetic dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .locals 0

    .line 13157
    check-cast p3, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ActivityIntentInfo;)V

    return-void
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ActivityIntentInfo;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filter"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 13697
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p3, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    .line 13698
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 13697
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 13699
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 13700
    iget-object v0, p3, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageParser$Activity;->printComponentShortName(Ljava/io/PrintWriter;)V

    .line 13701
    const-string v0, " filter "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 13702
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13703
    return-void
.end method

.method protected dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 2
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/Object;
    .param p4, "count"    # I

    .line 13711
    move-object v0, p3

    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    .line 13712
    .local v0, "activity":Landroid/content/pm/PackageParser$Activity;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 13713
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 13712
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 13714
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 13715
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageParser$Activity;->printComponentShortName(Ljava/io/PrintWriter;)V

    .line 13716
    const/4 v1, 0x1

    if-le p4, v1, :cond_0

    .line 13717
    const-string v1, " ("

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " filters)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 13719
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 13720
    return-void
.end method

.method protected bridge synthetic filterToLabel(Landroid/content/IntentFilter;)Ljava/lang/Object;
    .locals 0

    .line 13157
    check-cast p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->filterToLabel(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected filterToLabel(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Ljava/lang/Object;
    .locals 1
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 13707
    iget-object v0, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    return-object v0
.end method

.method protected bridge synthetic isFilterStopped(Landroid/content/IntentFilter;I)Z
    .locals 0

    .line 13157
    check-cast p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->isFilterStopped(Landroid/content/pm/PackageParser$ActivityIntentInfo;I)Z

    move-result p1

    return p1
.end method

.method protected isFilterStopped(Landroid/content/pm/PackageParser$ActivityIntentInfo;I)Z
    .locals 5
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .param p2, "userId"    # I

    .line 13580
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 13581
    :cond_0
    iget-object v0, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    .line 13582
    .local v0, "p":Landroid/content/pm/PackageParser$Package;
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 13583
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 13584
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v3, :cond_2

    .line 13588
    iget v4, v3, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/2addr v4, v1

    if-nez v4, :cond_1

    .line 13589
    invoke-virtual {v3, p2}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 13588
    :cond_1
    move v1, v2

    :goto_0
    return v1

    .line 13592
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_2
    return v2
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .locals 0

    .line 13157
    check-cast p2, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/pm/PackageParser$ActivityIntentInfo;)Z

    move-result p1

    return p1
.end method

.method protected isPackageForFilter(Ljava/lang/String;Landroid/content/pm/PackageParser$ActivityIntentInfo;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 13598
    iget-object v0, p2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic newArray(I)[Landroid/content/IntentFilter;
    .locals 0

    .line 13157
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->newArray(I)[Landroid/content/pm/PackageParser$ActivityIntentInfo;

    move-result-object p1

    return-object p1
.end method

.method protected newArray(I)[Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .locals 1
    .param p1, "size"    # I

    .line 13575
    new-array v0, p1, [Landroid/content/pm/PackageParser$ActivityIntentInfo;

    return-object v0
.end method

.method protected newResult(Landroid/content/pm/PackageParser$ActivityIntentInfo;II)Landroid/content/pm/ResolveInfo;
    .locals 17
    .param p1, "info"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .param p2, "match"    # I
    .param p3, "userId"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 13604
    move/from16 v2, p3

    sget-object v3, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    .line 13605
    :cond_0
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v5, v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v6, v0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    invoke-virtual {v3, v5, v6, v2}, Lcom/android/server/pm/Settings;->isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 13606
    return-object v4

    .line 13608
    :cond_1
    iget-object v3, v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    .line 13609
    .local v3, "activity":Landroid/content/pm/PackageParser$Activity;
    iget-object v5, v3, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 13610
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v5, :cond_2

    .line 13611
    return-object v4

    .line 13613
    :cond_2
    invoke-virtual {v5, v2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v6

    .line 13614
    .local v6, "userState":Landroid/content/pm/PackageUserState;
    iget v7, v0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    .line 13615
    invoke-static {v3, v7, v6, v2}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 13616
    .local v7, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v7, :cond_3

    .line 13617
    return-object v4

    .line 13619
    :cond_3
    iget v8, v0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    const/high16 v9, 0x2000000

    and-int/2addr v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v8, :cond_4

    move v8, v10

    goto :goto_0

    :cond_4
    move v8, v9

    .line 13621
    .local v8, "matchExplicitlyVisibleOnly":Z
    :goto_0
    iget v11, v0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    const/high16 v12, 0x1000000

    and-int/2addr v11, v12

    if-eqz v11, :cond_5

    move v11, v10

    goto :goto_1

    :cond_5
    move v11, v9

    .line 13623
    .local v11, "matchVisibleToInstantApp":Z
    :goto_1
    if-eqz v11, :cond_7

    .line 13625
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isVisibleToInstantApp()Z

    move-result v12

    if-eqz v12, :cond_7

    if-eqz v8, :cond_6

    .line 13626
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isExplicitlyVisibleToInstantApp()Z

    move-result v12

    if-eqz v12, :cond_7

    :cond_6
    move v12, v10

    goto :goto_2

    :cond_7
    move v12, v9

    .line 13627
    .local v12, "componentVisible":Z
    :goto_2
    iget v13, v0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    const/high16 v14, 0x800000

    and-int/2addr v13, v14

    if-eqz v13, :cond_8

    move v13, v10

    goto :goto_3

    :cond_8
    move v13, v9

    .line 13629
    .local v13, "matchInstantApp":Z
    :goto_3
    if-eqz v11, :cond_9

    if-nez v12, :cond_9

    iget-boolean v14, v6, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-nez v14, :cond_9

    .line 13630
    return-object v4

    .line 13633
    :cond_9
    if-nez v13, :cond_a

    iget-boolean v14, v6, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eqz v14, :cond_a

    .line 13634
    return-object v4

    .line 13638
    :cond_a
    iget-boolean v14, v6, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eqz v14, :cond_b

    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->isUpdateAvailable()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 13639
    return-object v4

    .line 13641
    :cond_b
    new-instance v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 13642
    .local v4, "res":Landroid/content/pm/ResolveInfo;
    iput-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 13643
    iget v14, v0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    and-int/lit8 v14, v14, 0x40

    if-eqz v14, :cond_c

    .line 13644
    iput-object v1, v4, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 13646
    :cond_c
    if-eqz v1, :cond_d

    .line 13647
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->handleAllWebDataURI()Z

    move-result v14

    iput-boolean v14, v4, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    .line 13649
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v14

    iput v14, v4, Landroid/content/pm/ResolveInfo;->priority:I

    .line 13650
    iget-object v14, v3, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget v14, v14, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    iput v14, v4, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 13653
    move/from16 v14, p2

    iput v14, v4, Landroid/content/pm/ResolveInfo;->match:I

    .line 13654
    iget-boolean v15, v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasDefault:Z

    iput-boolean v15, v4, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 13655
    iget v15, v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->labelRes:I

    iput v15, v4, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 13656
    iget-object v15, v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v15, v4, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 13669
    new-array v15, v10, [I

    const/16 v16, 0x1c

    aput v16, v15, v9

    invoke-static {v15}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 13670
    const/16 v9, 0x3e7

    if-eq v2, v9, :cond_e

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v9, v2}, Lcom/android/server/pm/PackageManagerService;->access$3600(Lcom/android/server/pm/PackageManagerService;I)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 13671
    iput-boolean v10, v4, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    goto :goto_4

    .line 13673
    :cond_e
    iget v9, v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->icon:I

    iput v9, v4, Landroid/content/pm/ResolveInfo;->icon:I

    goto :goto_4

    .line 13676
    :cond_f
    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v9, v2}, Lcom/android/server/pm/PackageManagerService;->access$3600(Lcom/android/server/pm/PackageManagerService;I)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 13677
    iput-boolean v10, v4, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    goto :goto_4

    .line 13679
    :cond_10
    iget v9, v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->icon:I

    iput v9, v4, Landroid/content/pm/ResolveInfo;->icon:I

    .line 13683
    :goto_4
    iget v9, v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->icon:I

    iput v9, v4, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    .line 13684
    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v9

    iput-boolean v9, v4, Landroid/content/pm/ResolveInfo;->system:Z

    .line 13685
    iget-boolean v9, v6, Landroid/content/pm/PackageUserState;->instantApp:Z

    iput-boolean v9, v4, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

    .line 13686
    return-object v4
.end method

.method protected bridge synthetic newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;
    .locals 0

    .line 13157
    check-cast p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->newResult(Landroid/content/pm/PackageParser$ActivityIntentInfo;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 13168
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 13169
    :cond_0
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    .line 13170
    const/high16 v0, 0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, p1, p2, v0, p4}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "defaultOnly"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 13161
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 13162
    :cond_0
    if-eqz p3, :cond_1

    const/high16 v0, 0x10000

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    .line 13163
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/ArrayList;I)Ljava/util/List;
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 13177
    .local p4, "packageActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Activity;>;"
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 13178
    :cond_0
    if-nez p4, :cond_1

    .line 13179
    return-object v1

    .line 13181
    :cond_1
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    .line 13182
    const/high16 v0, 0x10000

    and-int/2addr v0, p3

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v5, v0

    goto :goto_0

    :cond_2
    move v5, v1

    .line 13183
    .local v5, "defaultOnly":Z
    :goto_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 13184
    .local v0, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v2

    .line 13188
    .local v8, "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 13189
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Activity;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    .line 13190
    .local v2, "intentFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 13191
    nop

    .line 13192
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 13193
    .local v3, "array":[Landroid/content/pm/PackageParser$ActivityIntentInfo;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 13194
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13188
    .end local v3    # "array":[Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 13197
    .end local v1    # "i":I
    .end local v2    # "intentFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    :cond_4
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, v8

    move v7, p5

    invoke-super/range {v2 .. v7}, Lcom/android/server/IntentResolver;->queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public final removeActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V
    .locals 6
    .param p1, "a"    # Landroid/content/pm/PackageParser$Activity;
    .param p2, "type"    # Ljava/lang/String;

    .line 13541
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13542
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_SHOW_INFO:Z

    if-eqz v0, :cond_1

    .line 13543
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13544
    iget-object v2, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    goto :goto_0

    .line 13545
    :cond_0
    iget-object v2, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13543
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13546
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Class="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13548
    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 13549
    .local v0, "NI":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 13550
    iget-object v2, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 13551
    .local v2, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_SHOW_INFO:Z

    if-eqz v3, :cond_2

    .line 13552
    const-string v3, "PackageManager"

    const-string v4, "    IntentFilter:"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13553
    new-instance v3, Landroid/util/LogPrinter;

    const/4 v4, 0x2

    const-string v5, "PackageManager"

    invoke-direct {v3, v4, v5}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    const-string v4, "      "

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 13555
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->removeFilter(Landroid/content/IntentFilter;)V

    .line 13549
    .end local v2    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 13557
    .end local v1    # "j":I
    :cond_3
    return-void
.end method

.method protected sortResults(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 13691
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$3700()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 13692
    return-void
.end method
