.class Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "UserDictionarySettings.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/UserDictionarySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyAdapter"
.end annotation


# instance fields
.field private mIndexer:Landroid/widget/AlphabetIndexer;

.field private final mViewBinder:Landroid/widget/SimpleCursorAdapter$ViewBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 3

    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    new-instance v0, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter$1;-><init>(Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;->mViewBinder:Landroid/widget/SimpleCursorAdapter$ViewBinder;

    if-eqz p3, :cond_0

    const v0, 0x104022a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "word"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/widget/AlphabetIndexer;

    invoke-direct {v2, p3, v1, v0}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v2, p0, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;->mViewBinder:Landroid/widget/SimpleCursorAdapter$ViewBinder;

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;->setViewBinder(Landroid/widget/SimpleCursorAdapter$ViewBinder;)V

    return-void
.end method


# virtual methods
.method public getPositionForSection(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getSectionForPosition(I)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method
