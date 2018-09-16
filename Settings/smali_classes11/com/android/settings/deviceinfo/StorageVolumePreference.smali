.class public Lcom/android/settings/deviceinfo/StorageVolumePreference;
.super Landroid/support/v7/preference/Preference;
.source "StorageVolumePreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mColor:I

.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private final mUnmountListener:Landroid/view/View$OnClickListener;

.field private mUsedPercent:I

.field private final mVolume:Landroid/os/storage/VolumeInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lcom/android/settings/deviceinfo/StorageVolumePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;IJ)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volume"    # Landroid/os/storage/VolumeInfo;
    .param p3, "color"    # I
    .param p4, "totalBytes"    # J

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 57
    invoke-direct/range {p0 .. p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, -0x1

    iput v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    .line 152
    new-instance v4, Lcom/android/settings/deviceinfo/StorageVolumePreference$1;

    invoke-direct {v4, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreference$1;-><init>(Lcom/android/settings/deviceinfo/StorageVolumePreference;)V

    iput-object v4, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mUnmountListener:Landroid/view/View$OnClickListener;

    .line 59
    const-class v4, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    iput-object v4, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 60
    iput-object v3, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 61
    move/from16 v4, p3

    iput v4, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mColor:I

    .line 63
    const v5, 0x7f0d0258

    invoke-virtual {v1, v5}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->setLayoutResource(I)V

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->setKey(Ljava/lang/String;)V

    .line 66
    iget-object v5, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5, v3}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    const-string v5, "private"

    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 70
    const v5, 0x7f080235

    invoke-virtual {v2, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .local v5, "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 72
    .end local v5    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    const v5, 0x7f080231

    invoke-virtual {v2, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 75
    .restart local v5    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v6

    .line 79
    .local v6, "path":Ljava/io/File;
    const-wide/16 v7, 0x0

    .line 80
    .local v7, "freeBytes":J
    const-wide/16 v9, 0x0

    .line 81
    .local v9, "usedBytes":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    const-wide/16 v11, 0x0

    const/4 v13, 0x1

    if-ne v0, v13, :cond_1

    .line 82
    const-class v0, Landroid/app/usage/StorageStatsManager;

    .line 83
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/StorageStatsManager;

    move-object v14, v0

    .line 85
    .local v14, "stats":Landroid/app/usage/StorageStatsManager;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/usage/StorageStatsManager;->getTotalBytes(Ljava/lang/String;)J

    move-result-wide v15
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    .end local p4    # "totalBytes":J
    .local v15, "totalBytes":J
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/usage/StorageStatsManager;->getFreeBytes(Ljava/lang/String;)J

    move-result-wide v17
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-wide/from16 v7, v17

    .line 87
    sub-long v9, v15, v7

    .line 90
    goto :goto_2

    .line 88
    :catch_0
    move-exception v0

    goto :goto_1

    .end local v15    # "totalBytes":J
    .restart local p4    # "totalBytes":J
    :catch_1
    move-exception v0

    move-wide/from16 v15, p4

    .line 89
    .end local p4    # "totalBytes":J
    .local v0, "e":Ljava/io/IOException;
    .restart local v15    # "totalBytes":J
    :goto_1
    sget-object v13, Lcom/android/settings/deviceinfo/StorageVolumePreference;->TAG:Ljava/lang/String;

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .end local v0    # "e":Ljava/io/IOException;
    .end local v14    # "stats":Landroid/app/usage/StorageStatsManager;
    :goto_2
    nop

    .line 101
    move-wide v13, v15

    goto :goto_4

    .line 94
    .end local v15    # "totalBytes":J
    .restart local p4    # "totalBytes":J
    :cond_1
    cmp-long v0, p4, v11

    if-gtz v0, :cond_2

    .line 95
    invoke-virtual {v6}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v13

    .end local p4    # "totalBytes":J
    .local v13, "totalBytes":J
    goto :goto_3

    .line 97
    .end local v13    # "totalBytes":J
    .restart local p4    # "totalBytes":J
    :cond_2
    move-wide/from16 v13, p4

    .end local p4    # "totalBytes":J
    .restart local v13    # "totalBytes":J
    :goto_3
    invoke-virtual {v6}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v7

    .line 98
    sub-long v9, v13, v7

    .line 101
    :goto_4
    invoke-static {v2, v9, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "used":Ljava/lang/String;
    invoke-static {v2, v13, v14}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v15

    .line 103
    .local v15, "total":Ljava/lang/String;
    const v11, 0x7f1210fe

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v0, v12, v16

    const/16 v16, 0x1

    aput-object v15, v12, v16

    invoke-virtual {v2, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 104
    const-wide/16 v11, 0x0

    cmp-long v11, v13, v11

    if-lez v11, :cond_3

    .line 105
    const-wide/16 v11, 0x64

    mul-long/2addr v11, v9

    div-long/2addr v11, v13

    long-to-int v11, v11

    iput v11, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    .line 108
    :cond_3
    iget-object v11, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v11, v6}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v11

    cmp-long v11, v7, v11

    if-gez v11, :cond_4

    .line 109
    const v11, 0x1010543

    invoke-static {v2, v11}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v11

    iput v11, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mColor:I

    .line 110
    const v11, 0x7f08025a

    invoke-virtual {v2, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 113
    .end local v5    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v6    # "path":Ljava/io/File;
    .end local v7    # "freeBytes":J
    .end local v9    # "usedBytes":J
    .end local v15    # "total":Ljava/lang/String;
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    move-object v5, v0

    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_4
    goto :goto_5

    .line 114
    .end local v13    # "totalBytes":J
    .restart local p4    # "totalBytes":J
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getStateDescription()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->setSummary(I)V

    .line 115
    iput v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    .line 118
    move-wide/from16 v13, p4

    .end local p4    # "totalBytes":J
    .restart local v13    # "totalBytes":J
    :goto_5
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 119
    iget v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mColor:I

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 120
    invoke-virtual {v1, v5}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-nez v0, :cond_6

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 124
    const v0, 0x7f0d01f9

    invoke-virtual {v1, v0}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->setWidgetLayoutResource(I)V

    .line 126
    :cond_6
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/StorageVolumePreference;)Landroid/os/storage/VolumeInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageVolumePreference;

    .line 46
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object v0
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 130
    const v0, 0x7f0a057c

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 131
    .local v0, "unmount":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06029f

    .line 135
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 134
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 137
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mUnmountListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    :cond_0
    const v1, 0x102000d

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 141
    .local v1, "progress":Landroid/widget/ProgressBar;
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 142
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 143
    iget v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 144
    iget v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mColor:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 146
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 149
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 150
    return-void
.end method
