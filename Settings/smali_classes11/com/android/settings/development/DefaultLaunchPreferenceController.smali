.class public Lcom/android/settings/development/DefaultLaunchPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "DefaultLaunchPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mPreferenceKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/development/DefaultLaunchPreferenceController;->mPreferenceKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/development/DefaultLaunchPreferenceController;->mPreferenceKey:Ljava/lang/String;

    return-object v0
.end method
