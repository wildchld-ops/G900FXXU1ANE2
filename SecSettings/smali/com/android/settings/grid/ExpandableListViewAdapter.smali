.class public Lcom/android/settings/grid/ExpandableListViewAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ExpandableListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/grid/ExpandableListViewAdapter$HeaderViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private childList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private collapseDesc:Ljava/lang/String;

.field private expandDesc:Ljava/lang/String;

.field private expandablelistDesc:Ljava/lang/String;

.field private groupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public headersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private mGridType:I

.field private mOnGridItemSelectedListener:Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

.field private numberOfChildrenInRow:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/grid/ExpandableListViewAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/grid/ExpandableListViewAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->numberOfChildrenInRow:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->numberOfChildrenInRow:I

    iput-object p4, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->headersList:Ljava/util/List;

    iput-object p2, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->groupList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->childList:Ljava/util/ArrayList;

    iput p5, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->mGridType:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->expandDesc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->collapseDesc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->expandablelistDesc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->childList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->headersList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->childList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    move-object v1, v0

    goto :goto_0
.end method

.method public getChildId(II)J
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->childList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1

    :cond_0
    iget-object v2, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->headersList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->childList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iget-wide v1, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    goto :goto_0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-nez p4, :cond_1

    new-instance v2, Lcom/android/settings/grid/ExpandableListViewAdapter$HeaderViewHolder;

    invoke-direct {v2}, Lcom/android/settings/grid/ExpandableListViewAdapter$HeaderViewHolder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0400c2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b022d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/GridView;

    iput-object v4, v2, Lcom/android/settings/grid/ExpandableListViewAdapter$HeaderViewHolder;->row:Landroid/widget/GridView;

    new-instance v4, Lcom/android/settings/grid/GridViewAdapter;

    iget-object v5, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->headersList:Ljava/util/List;

    iget v7, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->mGridType:I

    invoke-direct {v4, v5, v6, v7}, Lcom/android/settings/grid/GridViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v4, v2, Lcom/android/settings/grid/ExpandableListViewAdapter$HeaderViewHolder;->adapter:Lcom/android/settings/grid/GridViewAdapter;

    iget-object v4, v2, Lcom/android/settings/grid/ExpandableListViewAdapter$HeaderViewHolder;->row:Landroid/widget/GridView;

    iget-object v5, v2, Lcom/android/settings/grid/ExpandableListViewAdapter$HeaderViewHolder;->adapter:Lcom/android/settings/grid/GridViewAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v4, v2, Lcom/android/settings/grid/ExpandableListViewAdapter$HeaderViewHolder;->row:Landroid/widget/GridView;

    iget v5, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->numberOfChildrenInRow:I

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    iget v4, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->numberOfChildrenInRow:I

    mul-int v1, v4, p2

    iget v4, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->numberOfChildrenInRow:I

    add-int v0, v1, v4

    iget-object v4, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->childList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v4, v0, :cond_0

    iget-object v4, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->childList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    iget-object v5, v2, Lcom/android/settings/grid/ExpandableListViewAdapter$HeaderViewHolder;->adapter:Lcom/android/settings/grid/GridViewAdapter;

    iget-object v4, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->childList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v1, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/settings/grid/GridViewAdapter;->setChildList(Ljava/util/List;)V

    iget-object v4, v2, Lcom/android/settings/grid/ExpandableListViewAdapter$HeaderViewHolder;->adapter:Lcom/android/settings/grid/GridViewAdapter;

    iget-object v5, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->mOnGridItemSelectedListener:Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

    invoke-virtual {v4, v5}, Lcom/android/settings/grid/GridViewAdapter;->setListener(Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;)V

    return-object v3

    :cond_1
    move-object v3, p4

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/grid/ExpandableListViewAdapter$HeaderViewHolder;

    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->childList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->childList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->numberOfChildrenInRow:I

    div-int v0, v1, v2

    iget-object v1, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->childList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->numberOfChildrenInRow:I

    rem-int/2addr v1, v2

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->headersList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->groupList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->headersList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    :cond_0
    return-object v0
.end method

.method public getGroupCount()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->groupList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getGroupId(I)J
    .locals 4

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->headersList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->headersList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity$Header;

    iget-wide v0, v2, Landroid/preference/PreferenceActivity$Header;->id:J

    :cond_0
    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-nez p3, :cond_0

    new-instance v0, Lcom/android/settings/grid/ExpandableListViewAdapter$HeaderViewHolder;

    invoke-direct {v0}, Lcom/android/settings/grid/ExpandableListViewAdapter$HeaderViewHolder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400a3

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b01bd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/settings/grid/ExpandableListViewAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const v3, 0x7f0b01be

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/android/settings/grid/ExpandableListViewAdapter$HeaderViewHolder;->expandArrow:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/android/settings/grid/ExpandableListViewAdapter$HeaderViewHolder;->expandArrow:Landroid/widget/ImageView;

    const/high16 v4, 0x900

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setId(I)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v4, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->headersList:Ljava/util/List;

    iget-object v3, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    iget v3, v3, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/android/settings/grid/ExpandableListViewAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_1

    iget-object v3, v0, Lcom/android/settings/grid/ExpandableListViewAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->expandablelistDesc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->collapseDesc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    new-instance v3, Lcom/android/settings/grid/ExpandableListViewAdapter$1;

    invoke-direct {v3, p0, p4, p1}, Lcom/android/settings/grid/ExpandableListViewAdapter$1;-><init>(Lcom/android/settings/grid/ExpandableListViewAdapter;Landroid/view/ViewGroup;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v2

    :cond_0
    move-object v2, p3

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/grid/ExpandableListViewAdapter$HeaderViewHolder;

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lcom/android/settings/grid/ExpandableListViewAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->expandablelistDesc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->expandDesc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onOrientationChanged(I)V
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->numberOfChildrenInRow:I

    sget-object v0, Lcom/android/settings/grid/ExpandableListViewAdapter;->TAG:Ljava/lang/String;

    const-string v1, "onOrientationChanged - land"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->numberOfChildrenInRow:I

    sget-object v0, Lcom/android/settings/grid/ExpandableListViewAdapter;->TAG:Ljava/lang/String;

    const-string v1, "onOrientationChanged - port"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setListener(Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/grid/ExpandableListViewAdapter;->mOnGridItemSelectedListener:Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

    return-void
.end method
