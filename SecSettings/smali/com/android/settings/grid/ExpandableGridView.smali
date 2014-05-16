.class public Lcom/android/settings/grid/ExpandableGridView;
.super Ljava/lang/Object;
.source "ExpandableGridView.java"


# instance fields
.field collapseDesc:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field expandDesc:Ljava/lang/String;

.field expandablelistDesc:Ljava/lang/String;

.field private mCategoryTextView:Landroid/widget/TextView;

.field private mExpandImageView:Landroid/widget/ImageView;

.field private mGridView:Landroid/widget/TableLayout;

.field private mIsExpanded:Z

.field private title_id:I


# direct methods
.method static synthetic access$000(Lcom/android/settings/grid/ExpandableGridView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/grid/ExpandableGridView;->mIsExpanded:Z

    return v0
.end method


# virtual methods
.method public saveExpandstate(Z)V
    .locals 6

    iget-object v3, p0, Lcom/android/settings/grid/ExpandableGridView;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/grid/ExpandableGridView;->title_id:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/grid/ExpandableGridView;->context:Landroid/content/Context;

    const-string v4, "expand_state"

    iget-object v5, p0, Lcom/android/settings/grid/ExpandableGridView;->context:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setExpanded(Z)V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/grid/ExpandableGridView;->mCategoryTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/grid/ExpandableGridView;->mGridView:Landroid/widget/TableLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/grid/ExpandableGridView;->mExpandImageView:Landroid/widget/ImageView;

    const v2, 0x7f0205d7

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/settings/grid/ExpandableGridView;->mCategoryTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/grid/ExpandableGridView;->expandablelistDesc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/grid/ExpandableGridView;->collapseDesc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/grid/ExpandableGridView;->mIsExpanded:Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/grid/ExpandableGridView;->mExpandImageView:Landroid/widget/ImageView;

    const v2, 0x7f0205d8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/settings/grid/ExpandableGridView;->mGridView:Landroid/widget/TableLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/grid/ExpandableGridView;->mCategoryTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/grid/ExpandableGridView;->expandablelistDesc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/grid/ExpandableGridView;->expandDesc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
